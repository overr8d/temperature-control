run:-
    repeat,
    write("\nEnter a temperature in degrees Celcius: "),
    read(C),
    process(C),
    C=quit.

process(quit):-!.
process(C):-
    number(C),
    convert(C,F),
    write("The temperature is "), write(F), write(" Degrees Fahrenheit"),
    nl,
    warning(F,W),
    write(W),
    nl.


warning(T, "It is really hot out."):- T>90,!.
warning(T, "Brass monkey danger."):- T<30,!.
warning(_,"").

convert(Cel, Fahr):-
    Fahr is 9.0/5.0 * Cel + 32.
