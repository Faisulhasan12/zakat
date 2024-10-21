/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package zakat;
import java.util.Scanner;
/**
 *
 * @author User
 */
public class Zakat {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
            Scanner input = new Scanner(System.in);
        String ulangi;

        do {
            System.out.println("Pilih jenis zakat:");
            System.out.println("1. Zakat Fitrah");
            System.out.println("2. Zakat Mal");

            System.out.print("Masukkan pilihan Anda (1/2): ");
            int pilihan = input.nextInt();
            double jumlahZakat;

            switch (pilihan) {
                case 1:
                    // Zakat Fitrah
                    System.out.print("Masukkan jumlah anggota keluarga: ");
                    int jumlahKeluarga = input.nextInt();
                    System.out.print("Masukkan harga beras per kg: ");
                    double hargaBerasPerKg = input.nextDouble();
                    jumlahZakat = jumlahKeluarga * 2.5 * hargaBerasPerKg;
                    System.out.println("Jumlah zakat fitrah yang harus dibayar: Rp" + jumlahZakat);
                    break;
                case 2:
                    // Zakat Mal
                    System.out.print("Masukkan total harta Anda: ");
                    double totalHarta = input.nextDouble();
                    System.out.print("Masukkan harga 1 gram emas saat ini: ");
                    double hargaEmas = input.nextDouble();
                    double nisab = 520 * hargaEmas;
                    if (totalHarta >= nisab) {
                        jumlahZakat = totalHarta * 0.025;
                        System.out.println("Jumlah zakat mal yang harus dibayar: Rp" + jumlahZakat);
                    } else {
                        System.out.println("Harta Anda belum mencapai nisab untuk zakat mal.");
                    }
                    break;
                default:
                    System.out.println("Pilihan tidak valid.");
            }

            System.out.print("Apakah Anda ingin menghitung zakat lagi? (y/n): ");
            ulangi = input.next();
        } while (ulangi.equalsIgnoreCase("y"));

        System.out.println("Terima kasih telah menggunakan program zakat.");
        input.close();
    }
    
}
