Select * 
from PortfolioProject..UPIApps2021
order by 1;

-- Selecting All values from the list with Value >5000 Cr
Select * 
from PortfolioProject..UPIApps2021
where value_Cr> 5000
order by value_cr;


--Select distinct UPI_Banks
--from PortfolioProject..UPIApps2021


-- Selecting distinct banks count
Select distinct UPI_banks, count(UPI_Banks) as no_of_transactions
from PortfolioProject..UPIApps2021
group by UPI_Banks;


--
Select distinct month, count(value_cr) 
from PortfolioProject..UPIApps2021
group by month;


--Creating a new column called Volume per Mn per Customer
Select UPI_banks, Volume_Mn_By_Costumers, Volume_Mn, Volume_Mn_By_Costumers/Volume_Mn as Volume_per_Mn_perCustomer
from PortfolioProject..UPIApps2021
order by 1;


Select UPI_banks, Max(Volume_mn_by_costumers) as Max_vol_per_bank
from PortfolioProject..UPIApps2021
group by UPI_Banks
order by Max_vol_per_bank desc;


Select * 
from PortfolioProject..UPIApps2021
where UPI_Banks like '%phone%';

