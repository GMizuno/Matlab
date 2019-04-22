function ktemp = fahr_to_kelvin(ftemp)
    %FAHR_TO_KELVIN   Convert Fahrenheit to Kelvin

    ktemp = ((ftemp - 32) * (5/9)) + 273.15;
end