disp('Insira a função');
f = input('','s');
disp('Insira o valor extremo esquerdo do intervalo');
a = input('');
disp('Insira o valor etremo direito');
b = input('');
disp('Insira o valor do erro');
erro = input('');
disp('Insira o numero máx de operações');
max = input('');
i = 1;
while (1 < max)
    p = (a+b)/2;
    if abs(subs(f,p)== 0) < erro || (abs(b - a) < erro)
        fprintf('A raiz é: %d\n', p);
        fprintf('O numero de iterações foi: %i', i);
        break
    end
    i = i + 1;
    if (subs(f,p))*(subs(f,b))< 0
        a = p;
     else
        b = p;
    end
end    