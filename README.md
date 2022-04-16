# Hucel_Core

## mail address : hucelsoft@gmail.com

## youtube : https://www.youtube.com/channel/UC4GTOIiDWEe6jIuXlqSIhQg,

## Github : https://github.com/HalilUcel14

## Linkedin : https://www.linkedin.com/in/halilucel/



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