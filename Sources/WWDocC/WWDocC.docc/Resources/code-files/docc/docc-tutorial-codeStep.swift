@Tutorial(time: 30) {
	@Intro(title: "Creating Custom Sloths") {
		This tutorial guides you through building _Slothy_ — an app for creating and caring for custom sloths. You'll start by building the sloth creation view.

		@Image(source: creating-intro.png, alt: "A wireframe of an app interface that has an outline of a sloth and four buttons below the sloth. The buttons display the following symbols, from left to right: ice, fire, wind, and lightning.")
	}

	@Section(title: "Create a new project and add SlothCreator") {
		@ContentAndMedia(layout: horizontal) {
			Create and configure an Xcode project that uses SlothCreator.

			@Image(source: 01-creating-section1.png, alt: "An arrow pointing from the SlothCreator framework icon to the Xcode app project icon.")
		}

		@Steps {
			@Step {
				Create a new SwiftUI View file named `CustomizedSlothView.swift`.

				@Code(name: "CustomizedSlothView.swift", file: 01-creating-code-02-01.swift) {
					@Image(source: preview-01-creating-code-02-01.png, alt: "A screenshot from the Xcode preview as it would appear on iPhone, with the text, Hello, World!, centered in the middle of the display.")
				}
			}

			@Step {
				Import the `SlothCreator` package.

				@Code(name: "CustomizedSlothView.swift", file: 01-creating-code-02-02.swift) {
					@Image(source: preview-01-creating-code-02-01.png, alt: "A screenshot from the Xcode preview as it would appear on iPhone, with the text, Hello, World!, centered in the middle of the display.")
				}
			}

			@Step {
				Create a ``SlothCreator/Sloth`` state variable called `sloth`.

				@Code(name: "CustomizedSlothView.swift", file: 01-creating-code-02-03.swift) {
					@Image(source: preview-01-creating-code-02-01.png, alt: "A screenshot from the Xcode preview as it would appear on iPhone, with the text, Hello, World!, centered in the middle of the display.")
				}
			}
		}
	}
}
