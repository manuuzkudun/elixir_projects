defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates 20 cards" do
    assert length(Cards.create_deck) == 20
  end

  test "shuffle randomizes the deck order" do
    deck = Cards.create_deck
    assert Cards.shuffle(deck) != deck
  end
end
