# Curso de iOS 10 y Swift 3: de Cero a Experto

Repositorio con el contenido relacionado al curso que podréis comprar en Udemy en el siguiente enlace: https://www.udemy.com/swift-3-ios-10/learn/v4/overview

Por ahora he completado las 4 primeras secciones al 100%, siendo la sección 2 empezando con un Playground general y la sección 4 relacionada al playground "Strings" y los valores "Ints" finalizando con un ejercicio que combina las diferentes variantes de estos y haciendo uso de los emojis.

Por ahora, muy contento con el curso, muchas gracias Juan Gabriel (https://www.udemy.com/user/juangabriel2/)

**Tips sobre temas del IDE que me he ido encontrando y he descubierto ya que no aparecían en el curso o simplemente necesito recordar.**

* Añadir emojis en el código: **CMD + CTRL + SPACE.**
* Mostrar teclado en el emulador del teléfono si no aparece al hacer click en el TextField: **CMD + K** o en el simulador Hardware / Keyboard / Toggle Keyboard...
* Mostrar el Storyboard del proyecto dentro del IDE sin mostrar una pantalla externa.

Ir a dentro del proyecto al fichero **"Main.storyboard"**, click derecho con el ratón y seleccionar **"Open As.../Interface Builder"**:

![Main.StoryBoard](https://github.com/mugan86/ios10-swift3-beginner-to-expert-course/blob/master/Screens/1.png?raw=true)

Diferentes tips sobre elementos del Main.StoryBoard (Layout) para comprobar, manipular,...

* Obtener la longitud de un string: **string.characters.count**
* Registrar el evento en un textfield cuando cambia para poder comprobar que se mete lo deseado: http://stackoverflow.com/a/28395000
* Usar teclado númerico y decimales solo, sin carácteres: Seleccionar -> **Keyboard type: Decimal Pad**
* Comprobar si el TextField está completamente vacio: 
```
if nuestroTextField.text?.isEmpty ?? true {
            // Display alert message
            resultado.text = "¡¡ No puedes pretender hacer una conversión sin nada enviado, prueba a escribir un número por favor !!"
            return;
        }
```
