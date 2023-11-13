import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'politicade_privacidade_model.dart';
export 'politicade_privacidade_model.dart';

class PoliticadePrivacidadeWidget extends StatefulWidget {
  const PoliticadePrivacidadeWidget({Key? key}) : super(key: key);

  @override
  _PoliticadePrivacidadeWidgetState createState() =>
      _PoliticadePrivacidadeWidgetState();
}

class _PoliticadePrivacidadeWidgetState
    extends State<PoliticadePrivacidadeWidget> {
  late PoliticadePrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticadePrivacidadeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Política de Privacidade',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '1. Política de Privacidade',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'A Cliq Brasil Software construiu o aplicativo Cliq como um aplicativo Freemium. Este SERVIÇO é fornecido pela Cliq Brasil Software gratuitamente e deve ser usado como está.\nEsta página é usada para informar os visitantes sobre minhas políticas de coleta, uso e divulgação de Informações Pessoais, caso alguém decida usar meu Serviço.\nSe você optar por usar meu Serviço, você concorda com a coleta e uso de informações em relação a esta política. As Informações Pessoais que coleto são usadas para fornecer e melhorar o Serviço. Não usarei nem compartilharei suas informações com ninguém, exceto conforme descrito nesta Política de Privacidade.\nOs termos utilizados nesta Política de Privacidade têm os mesmos significados que nos nossos Termos e Condições, que estão acessíveis em Cliq, salvo definição em contrário nesta Política de Privacidade.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '2. Coleta e uso de informações',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Para uma melhor experiência, ao usar nosso Serviço, posso exigir que você nos forneça certas informações de identificação pessoal, incluindo, entre outras, Nome, Endereços, Características pessoais, . As informações que solicito serão retidas no seu dispositivo e não serão coletadas por mim de forma alguma.\nO aplicativo usa serviços de terceiros que podem coletar informações usadas para identificá-lo.\nLink para a política de privacidade de provedores de serviços terceirizados usados ​​pelo aplicativo\nServiços do Google Play',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '3. Dados de registro',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Quero informar que sempre que você utiliza meu Serviço, em caso de erro no aplicativo eu coleto dados e informações (através de produtos de terceiros) em seu telefone chamados Log Data. Esses Dados de Registro podem incluir informações como endereço de Protocolo de Internet (“IP”) do seu dispositivo, nome do dispositivo, versão do sistema operacional, a configuração do aplicativo ao utilizar meu Serviço, a hora e data de seu uso do Serviço e outras estatísticas .',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '4. Cookies ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Cookies são arquivos com uma pequena quantidade de dados que são comumente usados ​​como identificadores únicos anônimos. Eles são enviados para o seu navegador a partir dos sites que você visita e são armazenados na memória interna do seu dispositivo.\nEste Serviço não utiliza estes “cookies” explicitamente. No entanto, o aplicativo pode utilizar códigos e bibliotecas de terceiros que utilizam “cookies” para coletar informações e melhorar seus serviços. Você tem a opção de aceitar ou recusar esses cookies e saber quando um cookie está sendo enviado para o seu dispositivo. Se você optar por recusar nossos cookies, talvez não consiga usar algumas partes deste Serviço.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '5. Provedores de serviço ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Posso contratar empresas e indivíduos terceirizados pelos seguintes motivos:\nPara facilitar nosso Serviço;\nPara fornecer o Serviço em nosso nome;\nPara realizar serviços relacionados ao Serviço; ou\nPara nos ajudar a analisar como nosso Serviço é usado.\nQuero informar aos usuários deste Serviço que esses terceiros têm acesso às suas Informações Pessoais. O motivo é executar as tarefas que lhes são atribuídas em nosso nome. No entanto, eles são obrigados a não divulgar ou utilizar as informações para qualquer outro fim..',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '6. Segurança',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Valorizo ​​a sua confiança em nos fornecer suas informações pessoais, por isso estamos nos esforçando para usar meios comercialmente aceitáveis ​​para protegê-las. Mas lembre-se que nenhum método de transmissão pela Internet, ou método de armazenamento eletrônico é 100% seguro e confiável, e não posso garantir sua segurança absoluta.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '7. Links para outros sites',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Este Serviço pode conter links para outros sites. Se você clicar em um link de terceiros, será direcionado para esse site. Observe que esses sites externos não são operados por mim. Portanto, aconselho vivamente que reveja a Política de Privacidade destes websites. Não tenho controle e não assumo qualquer responsabilidade pelo conteúdo, políticas de privacidade ou práticas de quaisquer sites ou serviços de terceiros.\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '8. Privacidade infantil',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Estes Serviços não se destinam a ninguém com menos de 13 anos de idade. Não coleto intencionalmente informações de identificação pessoal de crianças com menos de 13 anos de idade. Caso eu descubra que uma criança menor de 13 anos me forneceu informações pessoais, eu as excluo imediatamente de nossos servidores. Se você é pai ou responsável e sabe que seu filho nos forneceu informações pessoais, entre em contato comigo para que eu possa tomar as medidas necessárias.\n',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '9. Alterações nesta Política de Privacidade ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Posso atualizar nossa Política de Privacidade de tempos em tempos. Portanto, é aconselhável revisar esta página periodicamente para verificar quaisquer alterações. Irei notificá-lo sobre quaisquer alterações publicando a nova Política de Privacidade nesta página.\nEsta política entra em vigor a partir de 25/10/2023.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    '10. Contate-nos',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                  child: Text(
                    'Se você tiver alguma dúvida ou sugestão sobre nossa Política de Privacidade, não hesite em entrar em contato conosco em contato@cliq.net.br.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
