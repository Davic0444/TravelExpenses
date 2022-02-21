package hu.david.app;


import java.time.LocalDate;

public class Auto {

    private String rendSzam = null;
    private double fogyasztas = 0.0;
    private String uzemanyagTipus = null;
    private int szallithatoSzemelyekSzama = 0;
    private int motorTerfogat = 0;
    private int gyartasiEv = 0;

    public Auto() {
    }

    public String getRendSzam() {
        return rendSzam;
    }

    public void setRendSzam(String rendSzam) {
        this.rendSzam = rendSzam;
    }

    public double getFogyasztas() {
        return fogyasztas;
    }

    public void setFogyasztas(double fogyasztas) {
        this.fogyasztas = fogyasztas;
    }

    public String getUzemanyagTipus() {
        return uzemanyagTipus;
    }

    public void setUzemanyagTipus(String uzemanyagTipus) {
        this.uzemanyagTipus = uzemanyagTipus;
    }

    public int getSzallithatoSzemelyekSzama() {
        return szallithatoSzemelyekSzama;
    }

    public void setSzallithatoSzemelyekSzama(int szallithatoSzemelyekSzama) {
        this.szallithatoSzemelyekSzama = szallithatoSzemelyekSzama;
    }

    public int getMotorTerfogat() {
        return motorTerfogat;
    }

    public void setMotorTerfogat(int motorTerfogat) {
        this.motorTerfogat = motorTerfogat;
    }

    public int getGyartasiEv() {
        return gyartasiEv;
    }

    public void setGyartasiEv(int gyartasiEv) {
        this.gyartasiEv = gyartasiEv;
    }

    // Eldönti, hogy sokat vagy keveset fogyaszt
    // egy sorba: return this.fogyasztas<6 ? true:false;
    public boolean kevesetFogyasztEldont() {
        boolean valasz = false;
        if (this.fogyasztas < 6) {
            valasz = true;
        } else {
            valasz = false;
        }
        return valasz;
    }

    public String getEvjaratKategoria() {
        String valasz = null;
        int autoKor = LocalDate.now().getYear() - this.gyartasiEv;
        if (autoKor >=0 && autoKor <= 3) {
            valasz = "újszerű";
        } else if (autoKor >= 4 && autoKor <= 10) {
            valasz = "használt";
        } else if (autoKor >= 11 && autoKor <= 29) {
            valasz = "öreg";
        } else if (autoKor>=30){
            valasz = "veterán";
        } else {
            valasz = "Hibás adat!";
        }
        return valasz;
    }

}
