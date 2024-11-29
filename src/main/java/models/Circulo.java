package models;

public class Circulo {
    //Declaramos las variables
    private double circunferencia;

    public Circulo() {
    }

    public Circulo(double circunferencia) {
        this.circunferencia = circunferencia;
    }
    public double getCircunferencia() {
        return circunferencia;
    }

    public void setCircunferencia(double circunferencia) {
        this.circunferencia = circunferencia;
    }
    public double getRadio(){
        return circunferencia/(2*Math.PI);
    }
}
