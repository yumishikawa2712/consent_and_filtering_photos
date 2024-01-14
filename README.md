# consent_and_filtering_photos

## サービス概要
このwebサービスは保育園や学校などの施設で、ウェブサイトやSNS上に写真をアップロードする際に、個人のプライバシーを保護するためのWebアプリケーションです。利用者が写真の掲載に同意か非同意かサービス上で登録し、施設側が撮った写真をアップロードすると、システムが自動で写真を選別し、掲載不可の人物が含まれていない写真のみダウンロードできるようになります。

## 想定されるユーザー層
保育園、学校、企業、社会人サークルなどの多数人が所属し、その活動をブログやSNSなどで発信する団体


## サービスコンセプト
実家がお寺とこども園を経営しています。どちらも何か行事があれば写真を撮り、その写真をブログやSNSに掲載することがあります。
プライバシー保護の観点から、こども園では紙で掲載の同意書を配布し、同意するかしないかの確認をとっています。
お寺では口頭やLINEなど地道な方法で掲載の可否を確認しています。手間もかかりますし、直接的に意思を確認をするので、掲載を断られるとお互い少し気まずく感じてしまい、住職は檀家の方への確認作業を負担に感じているようでした。このwebサービスを利用すれば直接的なやり取りではなくウェブ上で同意か非同意かの意思表示ができるので、施設側や利用者側の心的負担も少なくなります。また、写真を自動選別し、掲載に同意した方だけが写った写真をダウンロードできるので目視で写真を選別する手間も省くことができます。

利用者はアプリにユーザー登録し、写真の掲載に「同意する」または「同意しない」を選択します。
「同意しない」を選択した場合、指定されたフォームから自分の顔写真を3枚アップロードします。
マイページから名前やメールアドレス等の変更はできますが、同意/非同意の変更はオーナーのみ可能なので、変更がある場合は直接申し出てもらいます。ユーザーが同意/非同意を変更できる仕様にすると、オーナー側が写真を選別をしたタイミングと、同意/非同意を変更したタイミングにズレが生じ、掲載できる写真に差異が生まれる可能性があるため。
施設側はオーナーログインページからログインし、写真アップロード画面から写真をアップロードします。するとシステムが自動で同意していない人物が写った写真をフィルタリングし、同意した方のみが写った写真をダウンロードすることができます。
施設側はオーナーとしてログインすると同意/非同意のユーザーの一覧を閲覧できます。最終的に掲載する写真を目視で確認することが可能です。
施設側はユーザーの情報を変更、削除ができます。
＜写真フィルタリングからダウンロードまでの流れ＞
オーナーページにログインし、写真アップロード画面に進みます。
選別したい写真を自分のPCから選択し、ウェブ上でアップロードボタンを押すと、自動で選別が行われ、選別された写真一覧が表示されます。
写真を選択すると拡大表示され、目視で確認できます。
また、各写真にはチェックボックスが設けられており、希望の写真のみにチェックをしてダウンロードボタンを押すと、そのチェックした写真がPCにダウンロードされます。
写真のチェックボックスは、「全て選択する」や「すべての選択を解除」のボタンを設けます。

写真の管理、整理を行ったり、顔認識で写真を振り分けるサービスは存在するが、掲載可否の確認は別で行わなければならない。
このwebサービスは写真掲載の同意/非同意の確認作業と、写真の選別が紐付いているのに加え、選別のための写真データ（非同意の利用者がアップロードする3枚の写真）も利用者側に登録してもらうので、写真の掲載許可を取る〜写真の選別までの行程がかなり効率化されます。


## 実装を予定している機能
### MVP
認証にはsorceryを使用
ユーザー登録
ユーザーログイン　
ユーザー情報編集
オーナー登録
オーナーログイン 
オーナー情報編集
写真のアップロード、選別（画像処理：Microsoft Face APIを利用した顔認識機能）
写真のダウンロード

### その後の機能
オーナーを管理するアドミン