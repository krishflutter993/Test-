#include <iostream>
using namespace std;

// Function to calculate bike price using condition and insurance as numbers
int calculatePrice(int conditionChoice, int insuranceChoice)
{
    int price = 50000;

    // Condition check
    switch (conditionChoice)
    {
    case 1: // Good
        price += 10000;
        break;
    case 2: // Medium
        price += 5000;
        break;
    case 3: // Poor
        price -= 5000;
        break;
    default:
        cout << "Invalid condition selected.\n";
    }

    // Insurance check
    switch (insuranceChoice)
    {
    case 1: // Running
        price += 3000;
        break;
    case 2: // Expired
        price -= 2000;
        break;
    default:
        cout << "Invalid insurance selected.\n";
    }

    return price;
}

int main()
{
    int count;
    cout << "How many bikes do you want to enter? ";
    cin >> count;

    for (int i = 1; i <= count; i++)
    {
        cout << "\n--- Bike " << i << " Details ---\n";

        string vehicleNo, rcBookNo, company;
        int modelYear, conditionChoice, insuranceChoice;

        cout << "Vehicle No: ";
        cin >> vehicleNo;

        cout << "RC Book No: ";
        cin >> rcBookNo;

        cout << "Model Year: ";
        cin >> modelYear;

        cout << "Vehicle Condition:\n";
        cout << "1. Good\n2. Medium\n3. Poor\n";
        cout << "Enter choice (1-3): ";
        cin >> conditionChoice;

        cout << "Insurance:\n";
        cout << "1. Running\n2. Expired\n";
        cout << "Enter choice (1-2): ";
        cin >> insuranceChoice;

        cout << "Company: ";
        cin >> company;

        cout << "Accidental Insurance: YES\n";

        int price = calculatePrice(conditionChoice, insuranceChoice);
        cout << "Final Price: ₹" << price << endl;
    }

    return 0;
}
