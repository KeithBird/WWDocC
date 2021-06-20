# Getting Started with Sloths

Create a sloth and assign personality traits and abilities.

## Overview

Sloths are complex creatures that require careful creation and a suitable habitat. After creating a sloth, you're responsible for feeding them, providing fulfilling activities, and giving them opportunities to exercise and rest.

Every sloth has a ``Sloth/name`` and ``Sloth/color-swift.property``. You can optionally provide a ``Sloth/power-swift.property`` if your sloth has special supernatural abilities.

![A diagram with the five sloth power types: ice, fire, wind, lightning, and none.](slothPower.png)

### Create a Sloth

To create a standard sloth without any special supernatural powers, you initialize a new instance of the ``Sloth`` structure, and supply a name and a color, as the following code shows:

```swift
var sloth = Sloth(name: "Super Sloth", color: .blue, power: .none)
```

If your sloth possesses one of the special powers of `ice`, `fire`, `wind`, or `lightning`, you can specify this at creation:

```swift
var superSloth = Sloth(name: "Silly Sloth", color: .green, power: .lightning)
```

If you're creating a large number of sloths, you can define your own random name generator that conforms to the ``NameGenerator`` protocol, and use it to generate names:

```swift
let slothNamer = MyCustomSlothNamer()
var sloths: [Sloth] = []

for _ in 0...100 {
	let name = slothNamer.generateName(seed: 0)
	var sloth = Sloth(name: name, color: .green, power: .ice)

	sloths.append(sloth)
}
```
