# Flutter

## Instalación

* En la web oficial de [Flutter](https://flutter.dev/docs/get-started/install) descargar el SDK de Flutter.

![SDK Flutter](repository/images/SDK_Flutter.PNG)

* Descomprimir el fichero.zip dentro del directorio _C:\src\\_

![src Flutter](repository/images/src_flutter.PNG)

* Crear la variable de entorno para Flutter, como sigue:

![variable Flutter](repository/images/variables_entorno.png)

* Crear un nuevo _Path_ con la dirección de _C:\src\flutter\bin_

![path Flutter](repository/images/flutter_bin.PNG)

* En la cmd ejecutar **flutter doctor** para verificar si se ha instalado correctamente.

![doctor Flutter](repository/images/flutter_doctor.PNG)

# Instalar los _plugins_ de Flutter y Dart en Android Studio

1. Iniciar Android Studio.
2. Abrir _plugin preferences_ (Configure > Plugins).
3. Seleccionar el plugin de **Flutter** y click en **Install**.

![plugins Flutter](repository/images/Plugin_Flutter.PNG)

4. Click en **Restart** cuando finalice.

# Crear un nuevo template

1. En Android Studio seleccionar _Start a new Flutter project_

![new Flutter project](repository/images/proyecto1/new_Flutter_project.png)


2. Seleccionar Flutter application

![new Flutter application](repository/images/proyecto1/Flutter_application.PNG)

3. Definir el nombre del proyecto, la ubicación del SDK de Flutter _C:\src\Flutter_ y la ubicación del proyecto.

![new Project name](repository/images/proyecto1/Project_name.png)

4. Colocar el nombre del paquete y **Finalizar**.

5. Crear la clase principal **main()**. Además, las clases _MyApp_ y _State_

```dart
void main() {

}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  }
}
```

6. Completar los métodos con _Scaffold_ los _Widget_ por ejemplo:
```dart

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        child: Center(
          child: Text('Hola Mundo'),
        )
      )
    );
  }

}

```

7. Para crear un template con este código primero seleccionar todo el código y copiarlo. Luego ir a **File>Settings>Editor>Live Templates**

![new Flutter_live_templates](repository/images/proyecto1/Flutter_live_templates.PNG)

8. Seleccionar _Flutter_ luego en el botón derecho superior de **+** y escoger _1. Live template_

9. Colocar el nombre del template, una descripción y dentro de _Template text_ pegar el código.

![template_title](repository/images/proyecto1/template_title.PNG)

10. Definir para **dart** como se indica en la imágen. Finalmente, dar click en **Apply**

![template_dart](repository/images/proyecto1/template_dart.PNG)

11. Para hacer uso del template creado, simplemente, se escribe el nombre del template y se selecciona en la opción del autocompletado como se observa a continuación.

![usar_template](repository/images/proyecto1/usar_template.PNG)

## Ejecutar el projecto

1. Iniciar el _Android Virtual Device_ o conectar un dispositivo Android al computador.

2. Ejecutar la App en dispositivo conectado.

<div style="text-align:center">
	<img src="repository/images/proyecto1/emulacion.jpg" height="500">
</div>

## Simulaciones de proyectos

A continuación, se observan simulaciones de algunos proyectos realizados en Flutter:

1. Buttons: RaisedButton, FlatButton, IconButton, Tooltip

<div style="text-align:center">
	<img src="repository/gif_projects/image3.gif" height="500" align="Center">
</div>

### Project: 

* [Buttons](/flutter_app_template)

#### Repositorios:

* [RaisedButton.dart](repository/Widget_simple_file/RaisedButton.dart)
* [FlatButton.dart](repository/Widget_simple_file/FlatButton.dart)
* [icon_button.dart](repository/Widget_simple_file/icon_button.dart)
* [Tooltip.dart](repository/Widget_simple_file/Tooltip.dart) 

2. Checkbox

<div style="text-align:center">
	<img src="repository/gif_projects/image4.gif" height="500" align="Center">
</div>

### Project: 

* [Checkbox](/flutter_app_checkbox)

3. Switch

<div style="text-align:center">
	<img src="repository/gif_projects/image5.gif" height="500" align="Center">
</div>

### Project: 

* [Switch](/flutter_app_switch)

4. RadioButton

<div style="text-align:center">
	<img src="repository/gif_projects/image6.gif" height="500" align="Center">
</div>

### Project: 

* [RadioButton](/flutter_app_radio_button)

5. Date/Time picker

<div style="text-align:center">
	<img src="repository/gif_projects/image8.gif" height="500" align="Center">
</div>

### Project: 

* [Date/Time picker](/flutter_app_date_picker)

6. Slider

<div style="text-align:center">
	<img src="repository/gif_projects/image9.gif" height="500" align="Center">
</div>

### Project: 

* [Slider](/flutter_app_slider)

7. Drawer

<div style="text-align:center">
	<img src="repository/gif_projects/image10.gif" height="500" align="Center">
</div>

### Project: 

* [Drawer](/flutter_app_drawer)

8. Snackbar

<div style="text-align:center">
	<img src="repository/gif_projects/image11.gif" height="500" align="Center">
</div>

### Project: 

* [Snackbar](/flutter_app_snacbar)

9. Simple Dialog

<div style="text-align:center">
	<img src="repository/gif_projects/image12.gif" height="500" align="Center">
</div>

### Project: 

* [Simple Dialog](/flutter_app_dialog)

10. Alert Dialog

<div style="text-align:center">
	<img src="repository/gif_projects/image13.gif" height="500" align="Center">
</div>

### Project: 

* [Alert Dialog](/flutter_app_alertdialog)

11. Listview

<div style="text-align:center">
	<img src="repository/gif_projects/image14.gif" height="500" align="Center">
</div>

### Project: 

* [Listview](/flutter_app_list)

12. Listview Dinamic

<div style="text-align:center">
	<img src="repository/gif_projects/image15.gif" height="500" align="Center">
</div>

### Project: 

* [Listview Dinamic](/flutter_app_listview_dinamic)

13. Card

<div style="text-align:center">
	<img src="repository/images/proyecto2/card.jpg" height="500" align="Center" >
</div>

### Project: 

* [Card](/flutter_app_card)

