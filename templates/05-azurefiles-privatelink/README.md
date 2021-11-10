# Azure Files プライベートエンドポイント作成

ストレージアカウント、Azure File Share を作成し、スポーク仮想ネットワーク内にプライベートエンドポイントをアタッチする。
スポーク仮想ネットワーク内の仮想マシンから、プライベートリンクを使用して Azure Files をマウントする。

<br />

### パラメーター
- **fileStorageAccountName**: ストレージアカウント名
- **fileShareName**: File Share 名
- **fileSharePrivateEndpointName**: プライベートエンドポイント名
- **resourceGroup**: スポーク VNET を展開したリソースグループ名
- **virtualNetworkName**: プライベートエンドポイントを展開する VNET 名
- **subnetName**: プライベートエンドポイントを展開するサブネット名