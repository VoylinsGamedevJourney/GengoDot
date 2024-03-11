@tool
extends EditorPlugin

const panel := preload("res://addons/gengodot/gengodot.tscn")

var instance: Control


func _enter_tree():
	instance = panel.instantiate()
	EditorInterface.get_editor_main_screen().add_child(instance)
	_make_visible(false) # Hide the main panel. Very much required.


func _exit_tree():
	if instance:
		instance.queue_free()


func _has_main_screen():
	return true


func _make_visible(visible):
	if instance:
		instance.visible = visible


func _get_plugin_name():
	return "Localization"


func _get_plugin_icon():
	return EditorInterface.get_editor_theme().get_icon("Translation", "EditorIcons")
