# Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path is a class method and File#path is an instance method.

# File::path path(path) => str Returns the string representation of a path

# File#path path => filename Returns the pathname used to create file as a string.
# Does not normalize the name.

# This method raises an error when the file or directory from the pathname do not exist.