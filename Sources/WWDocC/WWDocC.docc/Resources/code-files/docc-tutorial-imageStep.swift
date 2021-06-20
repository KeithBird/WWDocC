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
				Create a new project using the iOS App template.

				@Image(source: placeholder-image.png, alt: "A screenshot of the template selector in Xcode. In the top row, iOS is selected as the platform. In the Application section, App is selected as the template; there's a highlight placed over the Next button at the lower-right of the sheet.")
			}

			@Comment {
				This is an example of a comment within a tutorial. The text contained within a `@Comment` directive does not get rendered in a built tutorial.
			}

			@Step {
				Enter "Slothy" as the Product Name.

				@Image(source: placeholder-image.png, alt: "A screenshot of the project sheet, which shows the Product Name for the app being built as Slothy. The Interface is set to SwiftUI, and the Life Cycle is set to SwiftUI App.")
			}
		}
	}
}
