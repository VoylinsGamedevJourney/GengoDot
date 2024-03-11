extends Node

const pot_begin: PackedStringArray = [
  'msgid ""',
  'msgstr ""',
  '"Project-Id-Version: {project_name} {project_version}\\n"',
  '"MIME-Version: 1.0\\n"',
  '"Content-Type: text/plain; charset=UTF-8\\n"',
  '"Content-Transfer-Encoding: 8-bit\\n"'
]
const pot_entry: String = '#: {file}:{line}\nmsgid "{str}"\nmsgstr ""'


static func generate_pot(path: String) -> void:
  var data: PackedStringArray = []
  for line: String in pot_begin:
    if !line.contains("{"):
      data.append(line)
      continue
    data.append(line.format({
      "project_name": ProjectSettings.get_setting("application/config/name"),
      "project_version": ProjectSettings.get_setting("application/config/version")
    }))

  # Create way to get all files inside a Godot project
  # Loop through extensions which can have translations
  # when looping through files, add each entry found to data
  # Between each entry, add an extra enter

  # Save POT file to specified path
  print(path)
  
  pass