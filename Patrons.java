import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Patrons {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Regex usada
        String regex = "^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.(?!$)|$)){4}$";

        // Compilamos la regex
        Pattern p = Pattern.compile(regex);

        // Presentacion del programa al usuario
        System.out.println();
        System.out.println("Este programa valida IP's en formato IPv4.");
        System.out.println();
        System.out.println("Para salir del programa pulsa \"Ctrl + C\".");
        System.out.println();

        // Ciclo de validacion de ip's
        while (true) {
            System.out.print("Introduce una ip: ");
            String ip = sc.nextLine();
            Matcher m = p.matcher(ip);
            if (m.matches()) {
                System.out.printf("%s es una ip correcta.\n", ip);
            } else {
                System.out.printf("%s no es una ip correcta.\n", ip);
            }
            System.out.println();
        }
    }
}
