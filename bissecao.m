%metodo da bisse��o

clear, clc
disp('Insira a fun��o');
f = input('','s');

disp('Insira valor de a para o intervalo ');
a = input('');

disp('Insira valor de b para o intervalo ');
b = input('');

disp('Insira o valor do erro');
erro = input('');

disp('Insira o n�mero m�x de itera��es');
j = input('');
i = 1;
while (i < j)
    p = (a+b)/2;
    if ( subs(f,p) == 0) || (abs(b - a) < erro )
        fprintf('A raiz �: %d\n', p);
        fprintf('O n�mero de itera��es foi: %i\n', i);
    break
    end
    i = i + 1;
    if (subs(f,p))*(subs(f,a)) < 0
        b = p;
    else
        a = p;
    end
end