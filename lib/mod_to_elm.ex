defmodule ModToElm do
  def convert(input_file_path, output_file_path) do
    {:ok, data} = File.read(input_file_path)

    content = elm_module_for(data)
    :ok = File.write(output_file_path, content)
  end

  defp elm_module_for(data) do
    data_list = for <<byte::8 <- data>>, into: [], do: byte
    """
    module Mod exposing (data)

    data =
      [#{Enum.join(data_list, ",")}]
    """
  end
end
