require 'spec_helper'

describe 'spaceship_operator_without_tag' do
  let(:msg) { 'spaceship operator without tag' }

  context 'with fix disabled' do
    context 'spaceship operator with tag' do
      let(:code) do
        <<-EOS
Foo<| tag != 'virtual' |>
Bar<| tag == 'bar' |> -> Baz <| tag == 'baz' |>
        EOS
      end

      it 'should not detect any problems' do
        expect(problems).to have(0).problems
      end
    end

    context 'spaceship operator without tag' do
      let(:code) do
        <<-EOS
Foo<| |>
        EOS
      end

      it 'should detect a problems' do
        expect(problems).to have(1).problems
      end
    end

    context 'spaceship operator with and without tag' do
      let(:code) do
        <<-EOS
Bar<| tag == 'bar' |> -> Baz <| |>
        EOS
      end

      it 'should detect a problems' do
        expect(problems).to have(1).problems
      end
    end
  end
end
