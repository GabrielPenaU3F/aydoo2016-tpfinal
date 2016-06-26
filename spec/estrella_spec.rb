require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'deberia representarse con el string estrella' do

    estrella = Estrella.new
    expect(estrella.get_representacion).to eq 'estrella'

  end

end
