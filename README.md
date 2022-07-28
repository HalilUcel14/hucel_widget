# Hucel_Core

## mail address : hucelsoft@gmail.com

## youtube : https://www.youtube.com/channel/UC4GTOIiDWEe6jIuXlqSIhQg,

## Github : https://github.com/HalilUcel14

## Linkedin : https://www.linkedin.com/in/halilucel/

###  Scaffold in SafeArea
Ne İşe Yarar: SafeArea içerisinde oto scaffold sunar. Eklenmeyi Kolaylaştırır.

// Before
```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}

```

// After
```dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      appbar: AppBar()
    )
  }
}

```

###  İs Connected Widget
Ne İşe Yarar: İnternete Bağlı olup olmadığınıza dair Widget Dönderir

```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:simple_firebase_app/connection_network_widget.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final connectivity = useMemoized(
      () => Connectivity(),
      [key],
    );

    return Scaffold(
      appBar: _homeAppBar(),
      body: _homeBody(context, connectivity),
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      title: const Text("A Simple Firebase Project"),
      centerTitle: true,
    );
  }

  Widget _homeBody(BuildContext context, Connectivity connectivity) {
    return StreamBuilder(
      stream: connectivity.onConnectivityChanged,
      builder: (_, AsyncSnapshot<ConnectivityResult?> snapshot) =>
          ConnectionNetworkWidget(
        snapshot: snapshot,
        connectedWidget: const Center(child: Text("isConnected")), // İnternet bağlı ise görünecek
        notConnectedWidget: const Center(
          child: Text("isNotConnected"), // internet bağlı değil ise görünecek
        ),
      ),
    );
  }
}

```

###  TextFormField EmailFormField Style
Ne İşe Yarar: TextFormField İçin Oluşturduğum otomatik design ve ek özellikleri tek seferde sunar.

```dart
return Scaffold(
      body: Column(
        children: const [
          TextFormField().emailStyleOne(...),
        ],
      ),
    );
```

###  TextFormField PasswordFormField Style
Ne İşe Yarar: TextFormField İçin Oluşturduğum otomatik design ve ek özellikleri tek seferde sunar.

```dart
return Scaffold(
      body: Column(
        children: const [
          TextFormField().passwwordStyleOne(...),
        ],
      ),
    );
```

###  ElevatedButton StadiumBorder Dizayn
Ne İşe Yarar: ElevatedButton içerisinde dizayn ve düzenlemeleri kolaylaştırır, başlangıçtan StadiumBorder özelliği ile kıvrım oluşturur.
Before
```dart
return Scaffold(
      body: Column(
        children: const [
          ElevatedButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all<TextStyle?>(yourTextStyle),
              ),
          ),
        ],
      ),
    );
```
After
```dart
return Scaffold(
      body: Column(
        children: const [
          ElevatedButtonWithStadiumBorder(
              textStyle:yourTextStyle
          ),
        ],
      ),
    );
```

###  ExpandedPaddingColumn
Ne İşe Yarar: Üst Üste Widget bindirmelerini azaltmak amaçlıdır.

#### Before
```dart
return Scaffold(
      body: Expanded(
          flex:6,
          child:Padding(
              padding:padding,
              child: Column(
                  children: []
                  )
                ),
          ),
    );
```
#### After
```dart
return Scaffold(
      body: ExpandedPaddingColumn(
          flex:6,
          padding: padding,
          children: [],
      ),
    );
```

###  ExpandedPaddingRow
Ne İşe Yarar: Üst Üste Widget bindirmelerini azaltmak amaçlıdır.

#### Before
```dart
return Scaffold(
      body: Expanded(
          flex:6,
          child:Padding(
              padding:padding,
              child: Row(
                  children: []
                  )
                ),
          ),
    );
```
#### After
```dart
return Scaffold(
      body: ExpandedPaddingRow(
          flex:6,
          padding: padding,
          children: [],
      ),
    );
```