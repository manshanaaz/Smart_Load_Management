fan = input("Enter Fan Power (W): ");
light = input("Enter Light Power (W): ");
ac = input("Enter AC Power (W): ");
heater = input("Enter Heater Power (W): ");
tv = input("Enter TV Power (W): ");

total = fan + light + ac + heater + tv;

disp("Total Load =")
disp(total)
limit=2000
OriginalPower=[fan light ac heater tv];
while total > 2000

    disp("Choose appliance to turn OFF")
    disp("1. Fan")
    disp("2. Light")
    disp("3. AC")
    disp("4. Heater")
    disp("5. TV")

    choice = input("Enter your choice: ");

    if choice == 1
        total = total - fan;
        fan = 0;
        disp("Fan is OFF")

    elseif choice == 2
        total = total - light;
        light = 0;
        disp("Light is OFF")

    elseif choice == 3
        total = total - ac;
        ac = 0;
        disp("AC is OFF")

    elseif choice == 4
        total = total - heater;
        heater = 0;
        disp("Heater is OFF")

    elseif choice == 5
        total = total - tv;
        tv = 0;
        disp("TV is OFF")
    end

    disp("Current Load =")
    disp(total)

end

disp("Load is now normal")
finalPower = [fan light ac heater tv];
appliances=categorical({'Fan','Light','AC','Heater','TV'})

figure
subplot(1,2,1)
bar(appliances, OriginalPower)
title('Before Load Management')
xlabel('Appliances')
ylabel('Power (W)')
subplot(1,2,2)
bar(appliances, finalPower)
title('After Load Management')
xlabel('Appliances')
ylabel('Power (W)')







