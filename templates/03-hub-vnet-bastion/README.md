# ハブ仮想ネットワークの作成

仮想ネットワーク（ハブ部分）と Azure Bastion (Standard) の展開。
Bastion ホストのデプロイに時間を要するため、展開後、`04-peering` のデプロイを行い、ハブ-スポーク VNET 間でピアリングを作成する。

<br />

### パラメーター
- **virtualNetworkName**: ハブ VNET 名
- **vnetAddressSpace**: ハブ VNET のアドレス範囲
- **subnetName**: Bastion ホストを展開するサブネット名
- **subnetAddressSpace**: サブネットのアドレス範囲
- **bastionName**: Bastion ホスト名
- **publicIPAddressName**: Bastion ホストにアタッチする Public IP アドレス名