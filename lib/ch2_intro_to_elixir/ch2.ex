defmodule Math do
  def add(a, b) do
    a + b
  end

  def subtract(a, b), do: a - b

  def one, do: 1

  def even_numbers(min, max) do
    Enum.filter(min..max, fn x -> rem(x, 2) == 0 end)
  end

  def even_numbers(max \\ 10) do
    even_numbers(0, max)
  end

  defp internal_calculation(x), do: 42 + x
end

defmodule Sandwich do
  def accept?(sandwich) do
    edible_meats = %{turkey: true, chicken: true, ham: false, olive_loaf: false}
    [:bread, mystery_meat, :bread] = sandwich

    case Map.fetch(edible_meats, mystery_meat) do
      {:ok, edible} ->
        if edible, do: "Yes, please!", else: "No thanks."

      :error ->
        "I don't know what this is!"
    end
  end
end
