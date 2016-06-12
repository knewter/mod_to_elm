# ModToElm

This is a quickie program to convert a .mod file (or really any binary) into an
Elm module that contains a single exported function, `data`, which returns a
list of ints representing the bytes in the file.

## Usage

```elixir
ModToElm.convert("path_to_input_file.mod", "path_to_output_file.elm")
```
