# earth-minecraft

  * [Introduction](#introduction)
  * [Getting Started](#getting-started)
    * [Creating a nation](#creating-a-nation)
    * [Join an existing nation](#joining-an-existing-nation)
  * [Core Concepts](#core-concepts)
    * [Time as a currency](#time-as-a-currency)

## Introduction

text text

## Getting Started

When first logging in to the server you will be prompted to choose 
between the following two options:

* Create a nation
* Join an existing one

If the Join an existing one option isn't there it means there are
no existing nations.

### Creating a nation

To create a nation you must decide upon three four things:

1. A name
2. A banner
3. An ideology

Please note that while the name and ideology can be changed under certain conditions,
the banner can not be changed.

#### The Name

You can name you nation whatever you want as long as the name

* Contains only letters, spaces, numbers, apostrophes and hyphens
* Isn't something offensive
* Is less than 50 characters long (including spaces)

#### The Banner

Creating a banner can be done at [This Website](https://www.planetminecraft.com/banner/)

Once you've created a banner click the __{} Export JSON__ and __COPY BANNER CODE__ buttons
as you will need it later.

Don't worry about what items are needed for the banner as __you won't be crafting it__.
You will be using the command

```
  /trigger banner
```
[More Info](#commands)

#### The Ideology

Pick an ideology from [This List](https://en.wikipedia.org/wiki/List_of_political_ideologies)

It's important to remember that __the ideology you pick only serves as a book cover__ for those looking to join your nation
The exact laws of your nation is not governed by a standard, though within reason you should still keep them relevant to your nations ideology.

#### Submitting Your Nation

To submit you nation type the above mentioned information into the #nation-submission text channel in the discord server.

Example:

```
  Name: Finland
  Banner: /give @p minecraft:white_banner{BlockEntityTag:{Patterns:[{Color:11,Pattern:"sc"}]}}
  Ideology: Democracy
```

Please do not type anything other than nation submissions in the #nation-submission channel.

### Joining an existing nation

There is not rule that a nation can have that says you can't join it, except by admin interferance.

It's important to consider the nations ideology when joining it.

## Core Concepts

### Time as a currency

If you press tab (the key above caps lock) in game it brings up a list of online players. Next to each player is a number that is constantly going up by one every second. Thus this number represents how many seconds that player has been online.

If a player is killed by another player then the time the killed player had on them is transfered to the killer. If you die on your own terms no time is lost or transfered.

Every real hour at hh:00 in a galaxy far far away the time store opens where you can spend time. It remains open for exactly one minute before closing. If it's open you can access it with the command

```
  /trigger store
```

When someone is in the time store they can not be killed.

## Commands

