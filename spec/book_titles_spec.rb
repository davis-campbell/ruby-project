# # Book Titles
#
# # Topics
#
# * classes and objects
# * instance variables
# * setter methods
# * strings
#
# # Notes
#
# Book Titles in English obey some strange capitalization rules. For example, "and" is lowercase in "War and Peace". This test attempts to make sense of some of those rules.
#

require 'spec_helper'

describe Book do

  before do
    @book = Book.new
  end

  describe 'title' do
    it 'should capitalize the first letter' do
      s = @book.title("inferno")
      expect(s).to eq("Inferno")
    end

    it 'should capitalize every word' do
      s = @book.title("stuart little")
      expect(s).to eq("Stuart Little")
    end

    describe 'should capitalize every word except...' do
      describe 'articles' do
        specify 'the' do
          s = @book.title("alexander the great")
          expect(s).to eq("Alexander the Great")
        end

        specify 'a' do
          s = @book.title("to kill a mockingbird")
          expect(s).to eq("To Kill a Mockingbird")
        end

        specify 'an' do
          s = @book.title("to eat an apple a day")
          expect(s).to eq("To Eat an Apple a Day")
        end
      end

      specify 'conjunctions' do
        s = @book.title("war and peace")
        expect(s).to eq("War and Peace")
      end

      specify 'prepositions' do
        s = @book.title("love in the time of cholera")
        expect(s).to eq("Love in the Time of Cholera")
      end
    end

    describe 'should always capitalize...' do
      specify 'I' do
        s = @book.title("what i wish i knew when i was 20")
        expect(s).to eq("What I Wish I Knew When I Was 20")
      end

      specify 'the first word' do
        s = @book.title("the man in the iron mask")
        expect(s).to eq("The Man in the Iron Mask")
      end
    end
  end
end
