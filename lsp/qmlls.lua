return {
  cmd = { "qmlls", "--import-path", ".", "--build-dir", "build" },
  filetypes = { "qml" }, 
  root_markers = { ".qmlls.ini", "CMakeLists.txt", ".git" },
}
