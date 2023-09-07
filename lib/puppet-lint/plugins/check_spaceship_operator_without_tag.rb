PuppetLint.new_check(:spaceship_operator_without_tag) do
  def check
    tokens.each do |t|
      next unless t.type == :LCOLLECT and t.next_code_token.type == :RCOLLECT

      notify :warning, {
        message: 'spaceship operator without tag',
        line: t.line,
        column: t.column,
        token: t,
      }
    end
  end
end
