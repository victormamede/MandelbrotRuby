def opacity_to_char(opacity)
  return ' ' if opacity <= 0.0

  case opacity
  when 0.0..0.1
    ' '
  when 0.1..0.2
    '.'
  when 0.2..0.3
    ':'
  when 0.3..0.4
    'o'
  when 0.4..0.5
    's'
  when 0.5..0.6
    'a'
  when 0.6..0.7
    'g'
  when 0.7..0.8
    '%'
  when 0.8..0.9
    '&'
  else
    '@'
  end
end
