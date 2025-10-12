# CI/CD — základy a GitHub Actions

## Co je CI/CD
- **CI (Continuous Integration)**: automatické spouštění buildů a testů při každém pushi/PR.
- **CD (Continuous Delivery/Deployment)**: automatické nasazení buildu do staging/produkce po úspěšném průchodu testy.

## Proč je CI/CD důležité
- Umožňuje rychlé detekování regresí.
- Automatizuje opakující se kroky (build, test, deploy).
- Zvyšuje spolehlivost a opakovatelnost nasazení.

## GitHub Actions (přehled)
- Integrované rozhraní pro automatizaci workflow v GitHubu.
- Spouštěče: push, pull_request, schedule, workflow_dispatch atd.
- Workflow se definuje souborem YAML v `.github/workflows/`.

### Příklad minimální CI workflow (YAML)
```yaml
name: CI
on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup dotnet
        uses: actions/setup-dotnet@v3
        with:
          dotnet-version: '7.x'
      - name: Restore
        run: dotnet restore
      - name: Build
        run: dotnet build --no-restore --configuration Release
      - name: Test
        run: dotnet test --no-build --verbosity normal
```

## Nasazování
- Po úspěšném buildu můžete nasadit artefakt na server nebo cloud (FTP, SSH, Azure, AWS, Docker registries apod.).
- Doporučení: mít oddělené prostředí (staging) před produkcí a automatické rollbacky pro neúspěšné nasazení.
