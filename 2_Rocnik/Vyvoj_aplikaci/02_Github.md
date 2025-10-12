# GitHub
## Co je GitHub
- Webová služba 
- Není to Git. 
	- Nejedná se o náhradu, nebo rozšíření programu Git. 
	- GitHub slouží pro nahrání repozitářů, které pomocí Gitu vytvoříte. 
- Slouží pro webový hosting repozitářů. 
- V základu je zdarma. 
- Konkurence – GitLab, Bitbucket
## Použití
- Pokud používáte pouze Git, repozitář je pouze na vašem zařízení. 
- Pomocí GitHubu je možné repozitář nahrát na server. 
- Díky tomu je Váš projekt jednak zálohovaný. 
- Budete k němu moci přistupovat přes internet. 
- Budete moci pracovat na projektu v týmu. 
## Nahrání repozitáře na GitHub
1. Nejprve je nutné vytvořit si účet na stránce https://github.com/ 
2. Po vytvoření účtu je možné vytvořit repozitář na GitHubu. 
3. Po vytvoření prázdného repozitáře na GitHubu je potřeba zavést referenci na repozitář do Gitu: 
	1. `git remote add origin https://github.com/nazev_repozitare` 
		- origin je název odkazu na repozitář na webu 
		- Tento název si můžete zvolit 
4. Po zavedení je možné repozitář z počítače převést na web pomocí: 
	1. `git push -u origin master` 
		- master je název větve, kterou na GitHub ukládáte 
		- Při prvním ukládání budete vyzváni k přihlášení 
## Stažení změn z GitHubu
- `git fetch` — stáhne nové commity bez merge.
- `git pull origin master` — stáhne a sloučí změny.
## Klonování repozitáře
- Pro vytvoření kopie repozitáře z GitHubu slouží příkaz: 
	- `git clone url` 
		- url je adresa klonovaného repozitáře
