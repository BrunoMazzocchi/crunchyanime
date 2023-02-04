# CrunchyAnime

This is a Flutter-based anime information app that allows users to search and browse anime titles, view details about specific anime, and save their favorite anime to a personalized list. The app utilizes a REST API to retrieve anime data and is built using Flutter, a popular open-source framework for building mobile apps. The code is available on GitHub for anyone to use or contribute to. If you want to contribute to the development of this app, please check out the repository.

<h1 align="center">

<img src="https://user-images.githubusercontent.com/68037905/214891515-25b1ce81-d390-4b66-a5ec-3a510dac44e8.png" width="170" height="350"/>
<img src="https://user-images.githubusercontent.com/68037905/214891521-d4bc6bf0-2cba-44a6-99a6-7ff1fc98ddda.png" height="350"/>
<img src="https://user-images.githubusercontent.com/68037905/214891523-6c771440-2817-4461-be39-a12fe20e3b8e.png" height="350"/>
<img src="https://user-images.githubusercontent.com/68037905/214891531-82cc1604-74a4-448c-858a-106863a4cf01.png" width="170" height="350"/>

</h1>


# Features

- List trending anime
- List some categories
- Bookmark your favorite anime using 
- Watch anime information, images, staff and characters. (Some information might not be available)

# Depedencies
- Curved navigation bar: A beautiful navigation bar with animations.
- Dio: To retrieve the API rest information and handle errors.
- Generic Bloc Provider: Instead of using all BLoc features, I'm using a generic one. 
- Provider: To use all blocs in singleton, I'm using provider dependency to call them all via the MultiProvider in the main.dart
- SQFLite: To store the bookmarked anime and call them later. 
- Youtube Player Flutter: To use a widget with the youtube video for each anime. 
- Shimmer: To show a loading animation while the data is being fetched from the API.

# Backend

For the backend, I'm using the Kitsu Anime API

**Kitsu API Docs**, [*Kitsu API Docs*](https://kitsu.docs.apiary.io/#).
**Kitsu API Github**, [*Kitsu API Github*](https://github.com/topics/kitsu-api).
