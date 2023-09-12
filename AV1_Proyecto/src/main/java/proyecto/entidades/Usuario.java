package proyecto.entidades;

public class Usuario {
    
    private String codigo;
    private String tipo;
    private String nombre;
    private String correo;
    private String contrasena;

    public Usuario() {
    }

    public Usuario(String codigo, String tipo, String nombre, String correo, String contrasena) {
        this.codigo = codigo;
        this.tipo = tipo;
        this.nombre = nombre;
        this.correo = correo;
        this.contrasena = contrasena;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
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

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    
}
