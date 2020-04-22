require 'rspec'
require_relative '../lib/justify'
require 'ipsum'

IPSUM_MAX_WORDLENGTH = 21

describe 'justify' do
  it 'counts spaces in line length calculation' do
    expect("a b c d e".justify(3)).to eq "a b\nc d\ne"
  end 
  it 'keeps lines strictly within the specified width' do
    expect("a bsd c dsd esd e e qwe".justify(3)).to eq "a\nbsd\nc\ndsd\nesd\ne e\nqwe"
  end
  it 'not adding extra spaces' do
    expect("a b c d e".justify(22)).to eq "a b c d e"
    expect("a b c d e".justify(4)).to eq "a b\nc d\ne"
  end
  it 'works well with oversized words 1' do
    expect("qweqwe basd asdc d e".justify(3)).to eq "qweqwe\nbasd\nasdc\nd e"
  end
  it 'works well with oversized words 2' do
    expect("a basd c d e".justify(3)).to eq "a\nbasd\nc d\ne"
  end
  it 'works well with oversized words 3' do
    expect("aasd basd casd dasd".justify(3)).to eq "aasd\nbasd\ncasd\ndasd"
  end
  it 'use default width 80' do
    expect(200.sentences.justify.split("\n").map(&:length)[0..-2]).to all be_between(80-IPSUM_MAX_WORDLENGTH,80)
  end
  it 'passes random tests, always keeping length less or equal than defined' do
    test = 200.sentences
    (IPSUM_MAX_WORDLENGTH..100).each do |len|      
      expect(test.justify(len).split("\n").map(&:length)[0..-2]).to all be_between(len-IPSUM_MAX_WORDLENGTH, len)
    end
  end
  xit 'keeps punctuation' do
    expect( "a b, C d! E".justify(5) ).to eq "a b,\nC d!\nE"
  end
  xit 'keeps paragraphs' do
    expect( "Part1\n\naa bb cc dd".justify(6) ).to eq "Part1\n\naa bb\ncc dd"
  end
  xit 'keeps paragraphs 2' do
    expect( "Chapter 1\n\nRoses\nare red,\nviolets\nare blue".justify(20)).to eq "Chapter 1\n\nRoses are red,\nviolets are blue"
  end
  xit 'keeps paragraphs when meets oversized word' do
    expect( "Chapter1\n\naa bb cc dd".justify(5) ).to eq "Chapter1\n\naa bb\ncc dd"
  end
  it 'optionally indent each block by the specified number of spaces' do
    expect( "a bcd Cd de".justify(4,2) ).to eq "  a\n  bcd\n  Cd\n  de"
  end
end
