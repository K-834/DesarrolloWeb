package entidades;

public class Usuario {
    
    private int id;
    private String tipo;
    private String nombre;
    private String correo;
    private String password;

    public Usuario() {
    }

    public Usuario(String tipo, String nombre, String correo, String password) {
        this.id = 0;
        this.tipo = tipo;
        this.nombre = nombre;
        this.correo = correo;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
