require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia representarse con el string nave' do

    nave = Nave.new
    expect(nave.get_representacion).to eq 'nave'

  end

end
