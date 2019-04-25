%metodo da bisseção

clear, clc
disp('Insira a função');
f = input('','s');

disp('Insira valor de a para o intervalo ');
a = input('');

disp('Insira valor de b para o intervalo ');
b = input('');

disp('Insira o valor do erro');
erro = input('');

disp('Insira o número máx de iterações');
j = input('');
i = 1;
while (i < j)
    p = (a+b)/2;
    if ( subs(f,p) == 0) || (abs(b - a) < erro )
        fprintf('A raiz é: %d\n', p);
        fprintf('O número de iterações foi: %i\n', i);
    break
    end
    i = i + 1;
    if (subs(f,p))*(subs(f,a)) < 0
        b = p;
    else
        a = p;
    end
end