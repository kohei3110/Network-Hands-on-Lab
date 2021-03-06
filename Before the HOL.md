Network Hands-on lab  
December 2021

<br />

### 参考情報
- <a href="https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming">名前付け規則を定義する</a>

- <a href="https://docs.microsoft.com/ja-jp/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations">Azure リソースの種類に推奨される省略形</a>

<br />

## リソースの展開

<br />

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fkohei3110%2FNetwork-Hands-on-Lab%2Fmaster%2Ftemplates%2FResources%2Fdeploy-resources.json)

### パラメーター
- **vnetName**: 仮想ネットワーク名

- **vnetAddressPrefix**： IPv4 名前空間

- **subnet1Name**： サブネット名

- **subnet1Prefix**： サブネット アドレス範囲

- **virtualMachineName**： 仮想マシン名

- **osVersion**： OS バージョン（Windows Server 2016, 2019 から選択可）

- **machineSize**： インスタンス サイズ（B2s, B2ms, D2S_v3 から選択可）

- **adminUserName**： ローカル管理者

- **adminPassword**： ローカル管理者パスワード

- **workspaceName**： Log Analytics ワークスペース

<br />

※事前にリソース グループの作成が必要

※選択したリソース グループのリージョンにすべてのリソースが展開

<br />

## リソースの設定

- Log Analytics ワークスペースへ仮想マシンを接続

- Azure Monitor for VM を有効化

- CloudShell で Az.Network のバージョンを確認

  ```
  (Get-InstalledModule -Name Az.Network -AllVersions).Version
  ```

  4.12.1-preview がインストールされていない場合は、インストール

  ```
  Install-Module -Name Az.Network -RequiredVersion 4.12.1-preview -AllowPrerelease -Force
  ```

- プライベート エンドポイントへの NSG 適用の有効化

  ```
  Register-AzProviderFeature -FeatureName AllowPrivateEndpointNSG -ProviderNamespace Microsoft.Network
  ```

- 仮想マシンへ Edge か Chrome をインストール