# Godot POT tool
A POT helper for Godot.
## WIP
This is very much a concept for now as this will need some improvements to be done inside the Godot editor such as text areas to gie more context for Strings.

Main idea will be that this will be an extra tab, next to 2D, 3D, and Scripts called Translations. This will replace the built in interface for translations which Godot provides and will work with POT files directly. The tool will handle everything such as providing a clean and effecient environment for translators and it will handle the creations of mo files (compiled po files) whilst making sure that the po files don't get included in the final export (with .gdignore in the po folder (yes, his is a hint for me so I don't forget)).

Basically a lot still needs to be figured out for this, but first of all, improvements will need to be made to the Godot engine itself before we can begin working on this effeciently.
