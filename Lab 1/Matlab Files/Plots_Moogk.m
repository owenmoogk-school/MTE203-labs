
x = [-5:0.1:0]
g1 = x - 3*exp(result0(2) * result0(3)) + 5
g2 = result0(1) - 3*exp(x * result0(3)) + 5
g3 = result0(1) - 3*exp(result0(2) * x) + 5


plot(x, g1, '-b', "LineWidth",2)     
hold on
grid on
plot(x,g2, "or", "MarkerSize", 4)
plot(x,g3, "-.k")
title("Graph of 'g'")
xlabel("Domain [-5,0]")
ylabel("Function Values")
legend("X1", "X2", "X3")

x = [0:0.1:5]
g1 = x - 3*exp(result0(2) * result0(3)) + 5
g2 = result0(1) - 3*exp(x * result0(3)) + 5
g3 = result0(1) - 3*exp(result0(2) * x) + 5

figure
grid on
subplot(2,2,1)  
plot(x,g1)
title("Graph of 'G(X1)'")
xlabel("Domain [0,5]")
ylabel("Function Values")

subplot(2,2,2)   
plot(x,g2)
title("Graph of 'G(X2)'")
xlabel("Domain [0,5]")
ylabel("Function Values")

subplot(2,1,2)    
plot(x,g3)
title("Graph of 'G(X3)'")
xlabel("Domain [0,5]")
ylabel("Function Values")
