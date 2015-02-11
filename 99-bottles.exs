#!/usr/bin/env elixir

defmodule Beersong
do
  def phrase(0) do "no more bottles" end
  def phrase(1) do "1 bottle" end
  def phrase(n) do "#{n} bottles" end

  def verse(0) do "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall." end
  def verse(n) do "#{phrase(n)} of beer on the wall, #{phrase(n)} of beer.\nTake one down and pass it around, #{phrase(n-1)} of beer on the wall.\n" end

  def bottles do 99..0 |> Enum.map(&verse/1) end
end

IO.puts Beersong.bottles
