function [ ArrayStruct ] = konsola()
sekwencja = input('Enter sequence: ','s');
nazwa= input('Enter name: ','s');
ArrayStruct.name=nazwa;
ArrayStruct.seq= sekwencja;
end