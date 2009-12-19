# Copyright 2007 Mike Burns

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

class Integer
  # Turn a number into the word representation of that number.
  #  1.to_word      # => "one"
  #  126620.to_word # => "one hundred twenty six thousand six hundred twenty"
  def to_word
    tmp = self / 1000
    final = (self % 1000).hundred_to_word(2)
    place = 3 # special-case the tens and below
    until tmp.zero? do
      final = (tmp%1000).hundred_to_word(place) + ' ' + final
      place += 1
      tmp = tmp / 1000
    end
    final == '' ? 'zero' : final.sub(/\s+$/,'')
  end

  protected

  def hundred_to_word(place = 0)
    if self.zero?
      ''
    elsif self < 10
      self.append_place(self.digit_to_word, place)
    elsif self < 20
      self.append_place(self.teen_to_word, place)
    elsif self < 100
      self.append_place(self.tens_place_to_word, place)
    else
      (hundreds,tens) = [self / 100, self % 100]
      if tens.zero?
        self.append_place(hundreds.digit_to_word + ' hundred', place)
      else
        self.append_place(hundreds.digit_to_word + ' hundred ' + tens.tens_place_to_word, place)
      end
    end
  end

  def append_place(word, place)
    places = %w(one ten hundred thousand million billion trillion)
    if place > 2
      word + ' ' + places[place]
    else
      word
    end
  end

  def tens_place_to_word
    if self > 19
      (tens, ones) = [self/10, self%10]
      ten = %w(twenty thirty forty fifty sixty seventy eighty ninety)[tens-2]
      ten+(ones.zero? ? '' : ' ' + ones.digit_to_word)
    else
      self.teen_to_word
    end
  end

  def teen_to_word
    if self < 10
      self.digit_to_word
    elsif self < 20
      %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[self-10]
    else
      self.tens_place_to_word
    end
  end

  def digit_to_word
    if self.zero?
      ''
    else
      %w(zero one two three four five six seven eight nine)[self]
    end
  end
end
