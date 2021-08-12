unit ufrmColaboradores;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, BufDataset, db, dbf, sqldb, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, EditBtn, ComboEx, DBGrids,
  Grids, Buttons, ExtDlgs, DBExtCtrls, Menus, ACBrCEP, ExtendedNotebook,
  ShortPathEdit, DBDateTimePicker, DateTimePicker, RTTICtrls, udm, MaskUtils,
  ufuncoes, ACBrSocket, ufrmbuscabancos, ufrmbuscarbancocorrente,
  ufrmtirarfoto;

type

  { TfrmColaboradores }

  TfrmColaboradores = class(TForm)
    ACBrCEP1: TACBrCEP;
    bdcbxCategoria: TDBLookupComboBox;
    btnAdicionar: TButton;
    btnAnterioar: TButton;
    btnApagarFoto: TButton;
    btnBanco: TSpeedButton;
    btnBanco1: TSpeedButton;
    btnCEP: TButton;
    btnProximo: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnRemover: TButton;
    DateEdit1: TDateEdit;
    dbDataAdmissao: TDBDateEdit;
    dbDataAvisoFinal: TDBDateEdit;
    dbDataAvisoInicial: TDBDateEdit;
    dbDataDemissao: TDBDateEdit;
    dbeAgencia: TDBEdit;
    dbeAgencia1: TDBEdit;
    dbeAliqTrans: TDBEdit;
    dbeAuxTrans: TDBEdit;
    dbeBanco2: TDBEdit;
    dbeCategoriaCR: TDBEdit;
    dbeCelular1: TDBEdit;
    dbeCelular2: TDBEdit;
    dbeCodigo: TDBEdit;
    dbeComissao: TDBEdit;
    dbeComplemento: TDBEdit;
    dbeCPF: TDBEdit;
    dbeDataExp: TDBDateEdit;
    dbeDataNasc: TDBDateEdit;
    dbeDependentes: TDBEdit;
    dbeDescricaoBanco: TDBEdit;
    dbeDescricaoBanco1: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dbedtCEP: TDBEdit;
    dbeLogradouro: TDBEdit;
    dbeMatriculaCT: TDBEdit;
    dbeNome: TDBEdit;
    dbeNumeroCH: TDBEdit;
    dbeNumeroConta: TDBEdit;
    dbeNumeroConta1: TDBEdit;
    dbeNumeroCR: TDBEdit;
    dbeNumeroCT: TDBEdit;
    dbeNumeroEnd: TDBEdit;
    dbeNumeroTE: TDBEdit;
    dbeOrgao: TDBEdit;
    dbePISCT: TDBEdit;
    dbeSecaoTE: TDBEdit;
    dbeSerieCR: TDBEdit;
    dbeSerieCT: TDBEdit;
    dbeZonaTE: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    dbgridSalario: TDBGrid;
    DBGroupBox1: TDBGroupBox;
    DBGroupBox2: TDBGroupBox;
    DBGroupBox8: TDBGroupBox;
    dbgroupboxCH: TDBGroupBox;
    dbgroupboxCR: TDBGroupBox;
    dbgroupboxCT: TDBGroupBox;
    dbgroupboxDadosAdmis: TDBGroupBox;
    dbgroupboxDadosBanc: TDBGroupBox;
    dbgroupboxDadosDemis: TDBGroupBox;
    dbgroupboxEnd1: TDBGroupBox;
    dbgroupboxTE: TDBGroupBox;
    DBImage1: TDBImage;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    dsFoto: TDataSource;

    dsDependentes: TDataSource;
    dsFilial: TDataSource;
    dbeAgencia2: TDBEdit;
    dbeAgencia3: TDBEdit;
    dbeDescricaoBanco2: TDBEdit;
    dbeDescricaoBanco3: TDBEdit;
    dbeNumeroConta2: TDBEdit;
    dbeNumeroConta3: TDBEdit;
    dbgridSalario1: TDBGrid;
    DBGroupBox9: TDBGroupBox;
    dbgroupboxDadosBanc1: TDBGroupBox;
    DBNavigator2: TDBNavigator;
    dsHistoricoEndereco: TDataSource;
    dsExpedicao: TDataSource;
    dsStatus: TDataSource;
    dsCidade: TDataSource;
    dsBairro: TDataSource;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    dsCategoriaCH: TDataSource;
    dsUFIdent: TDataSource;
    dsEndeZona: TDataSource;
    dsDadosRHColab: TDataSource;
    dsMotivo: TDataSource;
    dsEstadoCivil: TDataSource;
    dsDadosFinanceiros: TDataSource;
    dsConsultaColaborador: TDataSource;
    dsDadosEntidades: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    edtCodColab: TEdit;
    edtCpfColab: TEdit;
    edtNomeColab: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    nomedafoto: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbContagemFotos: TLabel;
    lkcbxBairro: TDBLookupComboBox;
    lkcbxCidade: TDBLookupComboBox;
    lkcbxEstadoCivil: TDBLookupComboBox;
    lkcbxMotivoDemi: TDBLookupComboBox;
    lkcbxUF: TDBLookupComboBox;
    lkcbxZona: TDBLookupComboBox;
    LongintField1: TLongintField;
    OpenPictureDialog1: TOpenPictureDialog;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pgPrincipal: TPageControl;
    pgSecundaria: TPageControl;
    qryBairroBAI_COD: TLongintField;
    qryBairroBAI_DESCRICAO: TStringField;
    qryCategoriaCHCNH: TStringField;
    qryCategoriaCHID: TStringField;
    qryCidadeID_CIDADE: TLongintField;
    qryCidadeNOME_CIDADE: TStringField;
    qryConsultaColaboradorBAN_COD: TLongintField;
    qryConsultaColaboradorENT_BAIRRO: TStringField;
    qryConsultaColaboradorENT_BANCO1: TStringField;
    qryConsultaColaboradorENT_CELULAR: TStringField;
    qryConsultaColaboradorENT_CELULAR2: TStringField;
    qryConsultaColaboradorENT_CEP: TStringField;
    qryConsultaColaboradorENT_CIDADE: TStringField;
    qryConsultaColaboradorENT_CNPJ_CPF: TStringField;
    qryConsultaColaboradorENT_COB_UF: TStringField;
    qryConsultaColaboradorENT_COD: TLongintField;
    qryConsultaColaboradorENT_COMPLEMENTO: TStringField;
    qryConsultaColaboradorENT_DT_CAD: TDateField;
    qryConsultaColaboradorENT_FONE: TStringField;
    qryConsultaColaboradorENT_LOGRADOURO: TStringField;
    qryConsultaColaboradorENT_NOME: TStringField;
    qryConsultaColaboradorENT_NUMERO: TStringField;
    qryConsultaColaboradorENT_OBS: TStringField;
    qryConsultaColaboradorENT_ORGAO: TStringField;
    qryConsultaColaboradorENT_ORGAOUF: TStringField;
    qryConsultaColaboradorENT_RESIDENTEDESDE: TDateField;
    qryConsultaColaboradorENT_STATUS: TStringField;
    qryConsultaColaboradorENT_UF: TStringField;
    qryConsultaColaboradorIDUSER: TLongintField;
    qryConsultaColaboradorID_CIDADE: TLongintField;
    qryConsultaColaboradorID_MD5: TStringField;
    qryConsultaColaboradorID_UF: TLongintField;
    qryConsultaColaboradorNF_EMPRESA: TLongintField;
    qryConsultaColaboradorPRO_REDUZ_ISS: TStringField;
    qryConsultaColaboradorRCS_DATAREG: TDateField;
    qryConsultaColaboradorRCS_ID: TLongintField;
    qryConsultaColaboradorRCS_INFOMATIVO: TStringField;
    qryConsultaColaboradorRCS_MOTIVO: TStringField;
    qryConsultaColaboradorRCS_VALOR: TBCDField;
    qryConsultaColaboradorRC_ADMISSAO: TDateField;
    qryConsultaColaboradorRC_AGENCIA: TLongintField;
    qryConsultaColaboradorRC_ALIQFGTS: TBCDField;
    qryConsultaColaboradorRC_ALIQINSS: TBCDField;
    qryConsultaColaboradorRC_ALIQIRRF: TBCDField;
    qryConsultaColaboradorRC_ALIQTANSP: TBCDField;
    qryConsultaColaboradorRC_AUXTRANSP: TStringField;
    qryConsultaColaboradorRC_AVISOFIM: TDateField;
    qryConsultaColaboradorRC_AVISOINI: TDateField;
    qryConsultaColaboradorRC_CCORRENTE: TLongintField;
    qryConsultaColaboradorRC_CNH_NUMERO: TLongintField;
    qryConsultaColaboradorRC_COMISSAO: TBCDField;
    qryConsultaColaboradorRC_CR_CATEG: TLongintField;
    qryConsultaColaboradorRC_CR_NUMERO: TStringField;
    qryConsultaColaboradorRC_CR_SERIE: TLongintField;
    qryConsultaColaboradorRC_CTPSNUMERO: TStringField;
    qryConsultaColaboradorRC_CTPSSERIE: TLongintField;
    qryConsultaColaboradorRC_CTPSUF: TStringField;
    qryConsultaColaboradorRC_DEMISSAO: TDateField;
    qryConsultaColaboradorRC_DEMISSAOMOTIVO: TStringField;
    qryConsultaColaboradorRC_ID: TLongintField;
    qryConsultaColaboradorRC_ID_1: TLongintField;
    qryConsultaColaboradorRC_MATRICULA: TStringField;
    qryConsultaColaboradorRC_NUMERO_PIS: TStringField;
    qryConsultaColaboradorRC_NUM_DEPENDENTES: TLongintField;
    qryConsultaColaboradorRC_SITUACAO: TLongintField;
    qryConsultaColaboradorRC_TE_NUMERO: TStringField;
    qryConsultaColaboradorRC_TE_SECAO: TLongintField;
    qryConsultaColaboradorRC_TE_ZONA: TLongintField;
    qryConsultaColaboradorRC_TP_CONTA: TLongintField;
    qryConsultaColaboradorZONA: TStringField;
    qryDadosEntidades: TSQLQuery;
    qryConsultaColaborador: TSQLQuery;
    qryDadosEntidadesENT_BAIRRO: TStringField;
    qryDadosEntidadesENT_CELULAR: TStringField;
    qryDadosEntidadesENT_CELULAR2: TStringField;
    qryDadosEntidadesENT_CEP: TStringField;
    qryDadosEntidadesENT_CIDADE: TStringField;
    qryDadosEntidadesENT_CNPJ_CPF: TStringField;
    qryDadosEntidadesENT_COB_CEP: TStringField;
    qryDadosEntidadesENT_COB_LOGRADOURO: TStringField;
    qryDadosEntidadesENT_COB_UF: TStringField;
    qryDadosEntidadesENT_COD: TLongintField;
    qryDadosEntidadesENT_COMPLEMENTO: TStringField;
    qryDadosEntidadesENT_CONJUGE: TStringField;
    qryDadosEntidadesENT_DATA_NASC: TDateField;
    qryDadosEntidadesENT_DT_CAD: TDateField;
    qryDadosEntidadesENT_FANTASIA: TStringField;
    qryDadosEntidadesENT_FAX: TStringField;
    qryDadosEntidadesENT_FONE: TStringField;
    qryDadosEntidadesENT_INSC_ESTADUAL: TStringField;
    qryDadosEntidadesENT_INSC_MUNICIPAL_RG: TStringField;
    qryDadosEntidadesENT_LOGRADOURO: TStringField;
    qryDadosEntidadesENT_NAT_ENT: TStringField;
    qryDadosEntidadesENT_NOME: TStringField;
    qryDadosEntidadesENT_NOME_CUIDADOR_1: TStringField;
    qryDadosEntidadesENT_NOME_CUIDADOR_2: TStringField;
    qryDadosEntidadesENT_NOME_SOCIAL: TStringField;
    qryDadosEntidadesENT_NUMERO: TStringField;
    qryDadosEntidadesENT_OBS: TStringField;
    qryDadosEntidadesENT_ORGAO: TStringField;
    qryDadosEntidadesENT_ORGAOUF: TStringField;
    qryDadosEntidadesENT_RESIDENTEDESDE: TDateField;
    qryDadosEntidadesENT_STATUS: TStringField;
    qryDadosEntidadesENT_TIPO_ENT: TStringField;
    qryDadosEntidadesENT_TP_FISCAL: TStringField;
    qryDadosEntidadesENT_UF: TStringField;
    qryDadosEntidadesIDUSER: TLongintField;
    qryDadosEntidadesID_CIDADE: TLongintField;
    qryDadosEntidadesID_EST_CVL: TLongintField;
    qryDadosEntidadesID_UF: TLongintField;
    qryDadosEntidadesID_UF_EXP: TLongintField;
    qryDadosEntidadesPAR_COD: TLongintField;
    qryDadosEntidadesPRO_REDUZ_ISS: TStringField;
    qryDadosEntidadesZONA: TStringField;
    qryDadosRHColabBAN_COD: TLongintField;
    qryDadosRHColabDESCRICAO_DEPARTAMENTO: TStringField;
    qryDadosRHColabENT_COD: TLongintField;
    qryDadosRHColabENT_NOME: TStringField;
    qryDadosRHColabID_DEPARTAMENTO: TLongintField;
    qryDadosRHColabNF_EMPRESA: TLongintField;
    qryDadosRHColabRCC_CARGO: TStringField;
    qryDadosRHColabRCC_DATAREG: TDateField;
    qryDadosRHColabRCC_DEPARTAMENTO: TStringField;
    qryDadosRHColabRCC_ID: TLongintField;
    qryDadosRHColabRC_ADMISSAO: TDateField;
    qryDadosRHColabRC_AGENCIA: TLongintField;
    qryDadosRHColabRC_AGENCIA_P: TStringField;
    qryDadosRHColabRC_ALIQFGTS: TBCDField;
    qryDadosRHColabRC_ALIQINSS: TBCDField;
    qryDadosRHColabRC_ALIQIRRF: TBCDField;
    qryDadosRHColabRC_ALIQTANSP: TBCDField;
    qryDadosRHColabRC_AUXTRANSP: TStringField;
    qryDadosRHColabRC_AVISOFIM: TDateField;
    qryDadosRHColabRC_AVISOINI: TDateField;
    qryDadosRHColabRC_BAN_COD_P: TLongintField;
    qryDadosRHColabRC_CAT_CNH: TLongintField;
    qryDadosRHColabRC_CCORRENTE: TLongintField;
    qryDadosRHColabRC_CNH_NUMERO: TLongintField;
    qryDadosRHColabRC_COMISSAO: TBCDField;
    qryDadosRHColabRC_CR_CATEG: TLongintField;
    qryDadosRHColabRC_CR_NUMERO: TStringField;
    qryDadosRHColabRC_CR_SERIE: TLongintField;
    qryDadosRHColabRC_CTPSNUMERO: TStringField;
    qryDadosRHColabRC_CTPSSERIE: TLongintField;
    qryDadosRHColabRC_CTPSUF: TStringField;
    qryDadosRHColabRC_DEMISSAO: TDateField;
    qryDadosRHColabRC_DEMISSAOMOTIVO: TStringField;
    qryDadosRHColabRC_ID: TLongintField;
    qryDadosRHColabRC_MATRICULA: TStringField;
    qryDadosRHColabRC_NOME_BANCO_P: TStringField;
    qryDadosRHColabRC_NOME_SOCIAL: TStringField;
    qryDadosRHColabRC_NUMERO_PIS: TStringField;
    qryDadosRHColabRC_NUM_DEPENDENTES: TLongintField;
    qryDadosRHColabRC_SITUACAO: TLongintField;
    qryDadosRHColabRC_TE_NUMERO: TStringField;
    qryDadosRHColabRC_TE_SECAO: TLongintField;
    qryDadosRHColabRC_TE_ZONA: TLongintField;
    qryDadosRHColabRC_TP_CONTA: TLongintField;
    qryDependentesDATA_NASCIMENTO: TDateField;
    qryDependentesENT_COD: TLongintField;
    qryDependentesGRAU_PARENTESCO: TStringField;
    qryDependentesID_DEPENDENTE: TLongintField;
    qryDependentesNOME_DEPENDENTE: TStringField;
    qryFotoENT_COD: TLongintField;
    qryFotoFOTOS: TBlobField;
    qryFotoID_FOTO: TLongintField;
    qryHistoricoEnderecoBAIRRO: TStringField;
    qryHistoricoEnderecoCEP: TStringField;
    qryHistoricoEnderecoCIDADE: TStringField;
    qryHistoricoEnderecoCOMPLEMENTO: TStringField;
    qryHistoricoEnderecoDATA_LANCAMENTO: TDateTimeField;
    qryHistoricoEnderecoENT_COD: TLongintField;
    qryHistoricoEnderecoID_ENDERECO_HISTORICO: TLongintField;
    qryHistoricoEnderecoLOGRADOURO: TStringField;
    qryHistoricoEnderecoNUMERO: TStringField;
    qryHistoricoEnderecoUF: TStringField;
    qryHistoricoEnderecoZONA: TStringField;
    qryEndeZonaENDERECO: TStringField;
    qryEndeZonaID: TStringField;
    qryEstadoCivilDESCRICAO_EST_CVL: TStringField;
    qryEstadoCivilID_EST_CVL: TLongintField;
    qryExpedicaoUF_COD: TLongintField;
    qryExpedicaoUF_REDUZIDO: TStringField;
    qryDadosFinanceiros: TSQLQuery;
    qryDadosFinanceirosID_MD5: TStringField;
    qryDadosFinanceirosRCC_CARGO: TStringField;
    qryDadosFinanceirosRCC_DATAREG: TDateField;
    qryDadosFinanceirosRCC_DEPARTAMENTO: TStringField;
    qryDadosFinanceirosRCC_ID: TLongintField;
    qryDadosFinanceirosRCS_DATAREG: TDateField;
    qryDadosFinanceirosRCS_ID: TLongintField;
    qryDadosFinanceirosRCS_INFOMATIVO: TStringField;
    qryDadosFinanceirosRCS_MOTIVO: TStringField;
    qryDadosFinanceirosRCS_VALOR: TBCDField;
    qryDadosFinanceirosRC_ID: TLongintField;
    qryStatusID: TStringField;
    qryStatusSTATUS: TStringField;
    qryUFIdentificacaoID_UF: TLongintField;
    qryUFIdentificacaoSIGLA: TStringField;
    qryEstadoCivil: TSQLQuery;
    qryMotivo: TSQLQuery;
    qryMotivoID: TStringField;
    qryMotivoMOTIVO: TStringField;
    qryDadosRHColab: TSQLQuery;
    qryEndeZona: TSQLQuery;
    qryUFIdent: TSQLQuery;
    qryCategoriaCH: TSQLQuery;
    qryCidade: TSQLQuery;
    qryBairro: TSQLQuery;
    qryStatus: TSQLQuery;
    qryExpedicao: TSQLQuery;
    qryHistoricoEndereco: TSQLQuery;
    qryFilial: TSQLQuery;
    qryFilialPAR_COD: TLongintField;
    qryFilialPAR_FANTASIA: TStringField;
    qryDependentes: TSQLQuery;
    qryFoto: TSQLQuery;
    SpeedButton1: TSpeedButton;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    tbAnterior: TToolButton;
    tbApagar: TToolButton;
    tbBuscar: TToolButton;
    tbCancelar: TToolButton;
    tbFechar: TToolButton;
    tbGravar: TToolButton;
    tbIncluir: TToolButton;
    tbModificar: TToolButton;
    tbProximo: TToolButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    tsConsulta: TTabSheet;
    tsDados: TTabSheet;
    tsdadosbancarios: TTabSheet;
    tsEndereco: TTabSheet;
    tsFinanceiro: TTabSheet;
    tsIdentificacao: TTabSheet;
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure antesClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAnterioarClick(Sender: TObject);
    procedure btnApagarFotoClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure btnCEPClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dbeDataNascChange(Sender: TObject);
    procedure dbDataAdmissaoChange(Sender: TObject);
    procedure dbDataDemissaoChange(Sender: TObject);
    procedure dbDataAvisoFinalChange(Sender: TObject);
    procedure dbDataAvisoInicialChange(Sender: TObject);
    procedure dbeDataExpChange(Sender: TObject);
    procedure dbeCelular2Change(Sender: TObject);
    procedure dbeDependentesChange(Sender: TObject);
    procedure dbedtCEPExit(Sender: TObject);
    procedure dbedtCEPKeyPress(Sender: TObject; var Key: char);
    procedure dbeCPFExit(Sender: TObject);
    procedure dbeCPFKeyPress(Sender: TObject; var Key: char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure deletarClick(Sender: TObject);
    procedure edtCodColabKeyPress(Sender: TObject; var Key: char);
    procedure edtCpfColabExit(Sender: TObject);
    procedure edtCpfColabKeyPress(Sender: TObject; var Key: char);
    procedure edtNomeColabKeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure lkcbxCidadeSelect(Sender: TObject);
    procedure lkcbxUFSelect(Sender: TObject);
    procedure proximoClick(Sender: TObject);
    procedure qryConsultaColaboradorAfterScroll(DataSet: TDataSet);
    procedure qryDadosEntidadesAfterOpen(DataSet: TDataSet);
    procedure qryDadosEntidadesAfterScroll(DataSet: TDataSet);
    procedure qryDadosEntidadesNewRecord(DataSet: TDataSet);
    procedure qryDadosRHColabAfterOpen(DataSet: TDataSet);
    procedure qryDadosRHColabBAN_CODValidate(Sender: TField);
    procedure qryDadosRHColabNewRecord(DataSet: TDataSet);
    procedure qryDadosRHColabRC_BAN_COD_PValidate(Sender: TField);
    procedure qryDadosFinanceirosNewRecord(DataSet: TDataSet);
    procedure qryHistoricoEnderecoNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure tbApagarClick(Sender: TObject);
    procedure tbBuscarClick(Sender: TObject);
    procedure tbCancelarClick(Sender: TObject);
    procedure tbFecharClick(Sender: TObject);
    procedure tbGravarClick(Sender: TObject);
    procedure tbIncluirClick(Sender: TObject);
    procedure tbModificarClick(Sender: TObject);
    procedure tbProximoClick(Sender: TObject);

  private
    function ValidaCPF(num: string): boolean;
    function ApenasNumeros(Const Texto:String):String;
    procedure ControlarBotoes(EmEdicao: Boolean);
    function Mascara(edt: String;str:String):string;

  public

  end;

var
  frmColaboradores: TfrmColaboradores;


implementation

{$R *.lfm}
{ TfrmColaboradores }
{ TODO 1 -o Nagila -c RH - Identificação : Campo estado civil a ser criado na tabela Entidades }
{ TODO 2 -o Nágila -c RH - Identificação : Campo Data_Nasc a ser criado na tabela
  Entidades para data de nascimento do colaborador }
{ TODO 1 -o Nagila -c RH - Identificação : Criar tabela estado civil }

procedure OpenImage();
begin
end;

procedure TfrmColaboradores.tbFecharClick(Sender: TObject);
begin
  frmColaboradores.Close;
end;

procedure TfrmColaboradores.tbGravarClick(Sender: TObject);
var
  i,entcod: integer;

begin
  if qryDadosEntidades.State in dsEditModes then
     qryDadosEntidadesENT_STATUS.AsString := 'A';


  for i := 0 to qryDadosEntidades.Fields.Count -1 do
  begin

    if (qryDadosEntidades.Fields[i].Required) and (qryDadosEntidades.Fields[i].AsString = '') then
    begin
      ShowMessage(qryDadosEntidades.Fields[i].DisplayLabel+' está vazio');
      qryDadosEntidades.Fields[I].FocusControl;
      Abort;
    end;
  end;

  if qryDadosEntidadesENT_COD.AsInteger <= 0 then
  begin
    DM.qryGerador.Close;
    DM.qryGerador.SQL.Text := 'SELECT gen_id (gen_ent_cod, 1) as gerador FROM RDB$DATABASE';
    DM.qryGerador.Open;

    qryDadosEntidadesENT_COD.AsInteger := DM.qryGerador.FieldByName ('GERADOR') .AsInteger;
  end;
  entcod := qryDadosEntidadesENT_COD.AsInteger;

  if qryDadosRHColabRC_ID.AsInteger <= 0 then
  begin
    //ShowMessage(qryDadosRHColabRC_ID.AsString);
    DM.qryGerador.Close;
    DM.qryGerador.SQL.Text := 'SELECT gen_id (gen_RC_ID, 1) as gerador FROM RDB$DATABASE';
    DM.qryGerador.Open;


    qryDadosRHColabRC_ID.AsInteger  := DM.qryGerador.FieldByName ('GERADOR') .AsInteger;
    qryDadosRHColabENT_COD.AsInteger:= qryDadosEntidadesENT_COD.AsInteger;
  end;

  try
    try
      if qryDadosEntidades.State in dsEditModes then
        qryDadosEntidades.Post;

      if qryDadosRHColab.State in dsEditModes then
        qryDadosRHColab.Post;

      qryFoto.First;
      while not qryFoto.eof do
      begin
        qryFoto.Edit;
        qryFotoENT_COD.AsInteger := entcod;
        qryFoto.Post;

        qryFoto.Next;
      end;

      qryDependentes.First;
      while not qryDependentes.eof do
      begin
        qryDependentes.Edit;
        qryDependentesENT_COD.AsInteger := entcod;

        DM.qryGerador.Close;
        DM.qryGerador.SQL.Text := 'SELECT gen_id(gen_dependentes_id,1) as gerador FROM RDB$DATABASE';
        DM.qryGerador.Open;
        qryDependentesID_DEPENDENTE.AsInteger:= DM.qryGerador.FieldByName ('GERADOR').AsInteger + 1;

        qryDependentes.Post;

        qryDependentes.Next;
      end;

      qryDadosEntidades.ApplyUpdates(0);
      qryDadosRHColab.ApplyUpdates(0);

      qryFoto.ApplyUpdates;
      qryDependentes.ApplyUpdates;

      qryDadosEntidades.SQLTransaction.CommitRetaining;
      qryDadosRHColab.SQLTransaction.CommitRetaining;
         except
      On E: Exception do
      begin
        ShowMessage('Não foi possível Gravar!'+#13+e.Message);
      end;
    end;
  finally
    ControlarBotoes(False);    //sempre ocorrerá
  end;


end;
procedure TfrmColaboradores.tbIncluirClick(Sender: TObject);
begin
  {para o botao incluir deve-se ativar a pagina principal e fazer um append nas
  duas qrys entidades e RHColab as demais funcoes é para da foco e o controle
  dos botoes por exemplo.}

  pgPrincipal.ActivePage := tsDados;

  qryDadosEntidades.Append;
  qryDadosRHColab.Append;

  qryDadosEntidadesENT_CNPJ_CPF.FocusControl;

  dbgroupboxDadosDemis.Enabled:= false;
  Controlarbotoes (True);

end;

procedure TfrmColaboradores.tbModificarClick(Sender: TObject);
begin
  {Para o botao modificar deve-se da um auto edite na qry RHcolab e ativar a
  pagina principal}

  dsDadosRHColab.AutoEdit:= true;
  pgPrincipal.ActivePageIndex:= 0;


  qryDadosEntidadesENT_CNPJ_CPF.FocusControl;

  dbgroupboxDadosDemis.Enabled:= true;
  ControlarBotoes(true);
end;

procedure TfrmColaboradores.tbProximoClick(Sender: TObject);
begin
  // o proximo mostra a proxima infotmação na grid
  qryConsultaColaborador.Next;
   Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));
  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));
end;

procedure TfrmColaboradores.tbAnteriorClick(Sender: TObject);
begin
  qryConsultaColaborador.Prior;
  Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));
  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));

end;

procedure TfrmColaboradores.tbApagarClick(Sender: TObject);
begin
  with qryDadosEntidades do
    begin
      if MessageDlg('Pergunta', 'Você deseja apagar o registro?', mtConfirmation,
      [mbYes, mbNo],1)= mrYes then
       begin
         Delete;
         ApplyUpdates();
         SQLTransaction.CommitRetaining;
         tbBuscarClick(tbBuscar);
         ControlarBotoes(false);
       end;
     end;
end;

procedure TfrmColaboradores.tbBuscarClick(Sender: TObject);
var posicao : integer;
begin
  posicao:= 0;
  if qryConsultaColaborador.Active then

  qryConsultaColaborador.close;

  if edtCodColab.Text = '' then
    qryConsultaColaborador.ParamByName('codColab').AsInteger:= 0
  else
    qryConsultaColaborador.ParamByName('codColab').AsInteger:= StrToInt(edtCodColab.Text);

  qryConsultaColaborador.ParamByName('cpfColab').AsString   := edtCpfColab.Text;

  qryConsultaColaborador.ParamByName('nomeColab').AsString  := edtNomeColab.Text;

  qryConsultaColaborador.open;

  Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));
  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));
  ControlarBotoes(false);
end;

procedure TfrmColaboradores.tbCancelarClick(Sender: TObject);
begin
  //Para cancelar os registros feitos
  if MessageDlg('Pergunta', 'Você deseja cancelar o registro?', mtConfirmation,
  [mbYes, mbNo],1)= mrYes then

begin
  qryDadosEntidades.Cancel;
  ControlarBotoes(false);
end;
end;

procedure TfrmColaboradores.dbeCPFKeyPress(Sender: TObject; var Key: char);
begin
   //Verifica a validação completa do cpf com o botao enter
  if key = #13 then
  begin
    if ValidaCPF (ApenasNumeros(dbeCPF.text)) then
    begin
      dbeNome.SetFocus;
    end
    else
      ShowMessage('CPF '+ dbeCPF.text+ ' Inválido')
  end;
end;

procedure TfrmColaboradores.DBGrid1CellClick(Column: TColumn);
begin
  Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));

end;

procedure TfrmColaboradores.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));
end;

procedure TfrmColaboradores.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Label40.Caption :=((inttostr(qryHistoricoEndereco.RecNo))+' de '+(inttostr(qryHistoricoEndereco.RecordCount)));
end;

procedure TfrmColaboradores.edtCodColabKeyPress(Sender: TObject; var Key: char);
begin
  //Realiza um apesquisa pelo codigo usando o botao enter
  if key = #13 then
     tbBuscarClick(tbBuscar);
end;

procedure TfrmColaboradores.edtCpfColabExit(Sender: TObject);
begin
  //Realiza uma verificação na validação do cpf
   begin
    if ValidaCPF (ApenasNumeros(edtCpfColab.text)) then
       tbBuscarClick(tbBuscar);
    end;
end;

procedure TfrmColaboradores.edtCpfColabKeyPress(Sender: TObject; var Key: char);
begin
  //Verifica a validação do cpf com o botao enter
  if key = #13 then
  begin
    if ValidaCPF (ApenasNumeros(edtCpfColab.text)) then
        tbBuscarClick(tbBuscar);
  end
end;

procedure TfrmColaboradores.edtNomeColabKeyPress(Sender: TObject; var Key: char);
begin
  //Pesquisa pelo nome clicando no botão enter
  if key = #13 then
   tbBuscarClick(tbBuscar);
end;



procedure TfrmColaboradores.FormCreate(Sender: TObject);
begin
  pgPrincipal.ActivePage := tsDados;
  pgSecundaria.ActivePage := tsIdentificacao;

  //Função para inserir o insert e update das qrys entidades e rh_colab
  qryDadosEntidades.InsertSQL.Text  := getInsertSql(qryDadosEntidades, 'ENTIDADES');
  qryDadosEntidades.UpdateSQL.Text  := getUpdateSQL(qryDadosEntidades, 'ENTIDADES', 'ent_cod');

  qryDadosRHColab.InsertSQL.Text    := getInsertSql(qryDadosRHColab, 'Rh_colab');
  qryDadosRHColab.UpdateSQL.Text    := getUpdateSQL(qryDadosRHColab, 'rh_colab', 'rc_id');

  qryFoto.InsertSQL.Text            := getInsertSQL(qryFoto, 'fotos');
  qryFoto.UpdateSQL.Text            := getUpdateSQL(qryFoto, 'fotos','id_foto');

  qryDependentes.InsertSQL.Text     := getInsertSQL(qryDependentes,'dependentes');
  qryDependentes.UpdateSQL.Text     := getUpdateSQL(qryDependentes,'dependentes', 'id_dependente');

  qryDadosFinanceiros.InsertSQL.Text:= getInsertSQL(qryDadosFinanceiros,'rh_colab_salario');

  //Parametro para chamar o Estado no LuckpComboBox
  qryCidade.close;
  qryCidade.ParamByName('idUF').AsInteger:= 0;
  qryCidade.open;

  //Parametro para chamar a Cidade no LookupComboBox
  qryBairro.close;
  qryBairro.ParamByName('codCid').AsInteger:= 0;
  qryBairro.open;

  //Abre as qrys para LookupComboBox na tela
  qryEndeZona.open;
  qryStatus.open;

  //qryConsultaTipoBanco.open;
  qryFilial.open;
  qryMotivo.open;
  qryEstadoCivil.open;
  qryExpedicao.open;
  qryCategoriaCH.open;
  qryHistoricoEndereco.open;
  qryUFIdent.open;

  qryDependentes.open;

  //Abre as Qrys pai e filho da tela
  qryDadosEntidades.open;
  qryDadosRHColab.open;

  //Chama a função controlar botões para o crud
  ControlarBotoes(false);
end;

procedure TfrmColaboradores.lkcbxCidadeSelect(Sender: TObject);
begin
  qryBairro.close;
  qryBairro.ParamByName('codCid').AsInteger:= lkcbxCidade.KeyValue;
  qryBairro.open;
end;

procedure TfrmColaboradores.lkcbxUFSelect(Sender: TObject);
begin
  qryCidade.close;
  qryCidade.ParamByName('idUF').AsInteger:= lkcbxUF.KeyValue;
  qryCidade.open;
end;

procedure TfrmColaboradores.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  i :integer;
begin
  //ACBr para buscar o cep na parte de endereços
  for i := 0 to ACBrCEP1.Enderecos.Count -1 do
  begin
   //edição nas fields
    qryDadosEntidadesENT_CEP.AsString        := ACBrCEP1.Enderecos[i].CEP;
    qryDadosEntidadesENT_LOGRADOURO.AsString := ACBrCEP1.Enderecos[i].Logradouro;
    qryDadosEntidadesENT_COMPLEMENTO.AsString:= ACBrCEP1.Enderecos[i].Complemento;
   //Edição nos campos
    SetKeyValue(lkcbxUF, ACBrCEP1.Enderecos[i].UF);
    SetKeyValue(lkcbxCidade, ACBrCEP1.Enderecos[i].Municipio);
    SetKeyValue(lkcbxBairro, ACBrCEP1.Enderecos[i].Bairro);
  end;
end;

procedure TfrmColaboradores.antesClick(Sender: TObject);
begin
  qryFoto.Prior;
end; 

procedure TfrmColaboradores.proximoClick(Sender: TObject);
begin
  qryFoto.Next;
end;

procedure TfrmColaboradores.addClick(Sender: TObject);
var NomeArquivo :String = '';
begin
  if OpenPictureDialog1.Execute then
    NomeArquivo := OpenPictureDialog1.FileName;

  if Trim(NomeArquivo) = '' then
  begin
     nomedafoto.Caption := 'Insira uma imagem!';
    Exit;
  end;

  nomedafoto.Caption:= 'Nome: "'+ (OpenPictureDialog1.FileName)+'"';

  qryFoto.Append;
  qryFotoFOTOS.LoadFromFile(OpenPictureDialog1.FileName);
  qryFoto.Post;

end;

procedure TfrmColaboradores.deletarClick(Sender: TObject);
begin
  if not qryFoto.IsEmpty then
    qryFoto.Delete;
end;

procedure TfrmColaboradores.qryDadosEntidadesAfterScroll(DataSet: TDataSet);
begin
  qryFoto.close;
  if qryDadosEntidadesENT_COD.AsInteger > 0 then
    qryFoto.ParamByName('ent_cod').AsString :=  qryDadosEntidadesENT_COD.AsString;
  qryFoto.Open;
end;

procedure TfrmColaboradores.btnAdicionarClick(Sender: TObject);
var NomeArquivo :String = '';
begin
  if OpenPictureDialog1.Execute then
    NomeArquivo := OpenPictureDialog1.FileName;

  if Trim(NomeArquivo) = '' then
  begin
     nomedafoto.Caption := 'Insira uma imagem!';
    Exit;
  end;

  nomedafoto.Caption:= 'Nome: "'+ (OpenPictureDialog1.FileName)+'"';

  qryFoto.Append;
  qryFotoFOTOS.LoadFromFile(OpenPictureDialog1.FileName);
  qryFoto.Post;

  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));
end;

procedure TfrmColaboradores.btnAnterioarClick(Sender: TObject);
begin
  qryFoto.Prior;
  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));
end;

procedure TfrmColaboradores.btnApagarFotoClick(Sender: TObject);
begin
  if not qryFoto.IsEmpty then
     qryFoto.Delete;
end;

procedure TfrmColaboradores.btnBancoClick(Sender: TObject);
begin
  //Chama a tela Buscar Bancos
  Application.CreateForm(TfrmBuscaBancos,frmBuscaBancos);
  frmBuscaBancos.ShowModal;

  //Retorna no campo ban_cod o codigo selecionado
  if frmBuscaBancos.ModalResult = mrOK then
    Begin
      qryDadosRHColabBAN_COD.AsInteger := frmBuscaBancos.codigoRetorno.ToInteger;

    end;
  FreeAndNil(frmBuscaBancos);
end;

procedure TfrmColaboradores.btnCEPClick(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(qryDadosEntidadesENT_CEP.AsString);
end;

procedure TfrmColaboradores.btnProximoClick(Sender: TObject);
begin
  qryFoto.Next;
  lbContagemFotos.Caption :=((inttostr(qryFoto.RecNo))+' de '+(inttostr(qryFoto.RecordCount)));
end;

procedure TfrmColaboradores.Button2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTirarFoto,frmTirarFoto);
  frmTirarFoto.ShowModal;
  FreeAndNil(frmTirarFoto);
end;

procedure TfrmColaboradores.Button3Click(Sender: TObject);
begin
  qryDependentes.Append;
  qryDependentesNOME_DEPENDENTE.AsString  := Edit1.Text;
  qryDependentesGRAU_PARENTESCO.AsString  := Edit2.Text;
  qryDependentesDATA_NASCIMENTO.AsDateTime:= DateEdit1.Date;
  qryDependentes.Post;
  EXIT;
end;

procedure TfrmColaboradores.btnRemoverClick(Sender: TObject);
begin
  if qryDependentes.IsEmpty = true then
  begin
     exit;
  end
  else
  begin
   qryDependentes.Delete;
  end;
end;

procedure TfrmColaboradores.Button4Click(Sender: TObject);
begin
  //MPlayerControl1.MPlayerPath:= '';
  //MPlayerControl1.Filename := 'tv:// driver=v4l2:device=/dev/video0:gain=1:width=300:height=400:fps=25';

  //MPlayerControl1.Play;
end;


 // {Mascaras para datas e numero de celular}
procedure TfrmColaboradores.dbeDataNascChange(Sender: TObject);
begin
  dbedtCEP.Text     := Mascara(dbedtCEP.Text,'99/99/9999');
  dbedtCEP.SelStart := Length(dbedtCEP.Text);
end;

procedure TfrmColaboradores.dbDataAdmissaoChange(Sender: TObject);
begin
  dbDataAdmissao.Text     := Mascara(dbDataAdmissao.Text,'99/99/9999');
  dbDataAdmissao.SelStart := Length(dbDataAdmissao.Text);
end;

procedure TfrmColaboradores.dbDataDemissaoChange(Sender: TObject);
begin
  dbDataDemissao.Text     := Mascara(dbDataDemissao.Text,'99/99/9999');
  dbDataDemissao.SelStart := Length(dbDataDemissao.Text);
end;

procedure TfrmColaboradores.dbDataAvisoFinalChange(Sender: TObject);
begin
  dbDataAvisoFinal.Text     := Mascara(dbDataAvisoFinal.Text,'99/99/9999');
  dbDataAvisoFinal.SelStart := Length(dbDataAvisoFinal.Text);
end;

procedure TfrmColaboradores.dbDataAvisoInicialChange(Sender: TObject);
begin
  dbDataAvisoInicial.Text     := Mascara(dbDataAvisoInicial.Text,'99/99/9999');
  dbDataAvisoInicial.SelStart := Length(dbDataAvisoInicial.Text);
end;

procedure TfrmColaboradores.dbeDataExpChange(Sender: TObject);
begin
  dbeDataExp.Text     := Mascara(dbeDataExp.Text,'99/99/9999');
  dbeDataExp.SelStart := Length(dbeDataExp.Text);
end;

procedure TfrmColaboradores.dbeCelular2Change(Sender: TObject);
begin
  dbeCelular2.Text     := Mascara(dbeCelular2.Text,'(99)9.9999-9999');
  dbeCelular2.SelStart := Length(dbeCelular2.Text);
end;

procedure TfrmColaboradores.dbeDependentesChange(Sender: TObject);
begin
  qryDependentes.close;
  qryDependentes.ParamByName('linha').AsInteger:= (strtoint(dbeDependentes.Caption));
  qryDependentes.open;
end;

procedure TfrmColaboradores.dbedtCEPExit(Sender: TObject);
begin
  if trim (dbedtCEP.Text) <> EmptyStr then
   ACBrCEP1.BuscarPorCEP(qryDadosEntidadesENT_CEP.AsString);
end;

procedure TfrmColaboradores.dbedtCEPKeyPress(Sender: TObject; var Key: char);
begin
  //Buscar CEP clicando no butão enter
  if key = #13 then
    ACBrCEP1.BuscarPorCEP(dbedtCEP.Text);

  if not (Key in ['0'..'9',#9]) then
  begin
    dbeNumeroEnd.SetFocus;
  end;
end;

procedure TfrmColaboradores.dbeCPFExit(Sender: TObject);
begin
  //Mudando o foco do cursor ao clicar num botão para sair do CPF
  if ValidaCPF (ApenasNumeros(dbeCPF.text)) then
  begin
    dbeNome.SetFocus;
  end
  else
    ShowMessage('CPF '+ dbeCPF.text+ ' Inválido')
end;

procedure TfrmColaboradores.qryConsultaColaboradorAfterScroll(DataSet: TDataSet);
begin
  qryDadosEntidades.close;
  qryDadosEntidades.ParamByName('ent_cod').AsInteger:= qryConsultaColaboradorENT_COD.AsInteger;
  qryDadosEntidades.open;
end;

procedure TfrmColaboradores.qryDadosEntidadesAfterOpen(DataSet: TDataSet);
begin
  qryDadosRHColab.close;
  qryDadosRHColab.ParamByName('ent_cod').AsInteger:= qryDadosEntidadesENT_COD.AsInteger;
  qryDadosRHColab.open;

  qryHistoricoEndereco.Close;
  qryHistoricoEndereco.ParamByName('entcod').AsInteger:=qryDadosEntidadesENT_COD.AsInteger;
  qryHistoricoEndereco.open;
end;

procedure TfrmColaboradores.qryDadosEntidadesNewRecord(DataSet: TDataSet);
begin

  qryDadosEntidadesENT_TP_FISCAL.AsString := 'F';
  qryDadosEntidadesENT_DT_CAD.AsDateTime  := now;
  qryDadosEntidadesENT_NAT_ENT.AsString   := 'C';
  qryDadosEntidadesENT_TIPO_ENT.AsString  := 'C';
end;

procedure TfrmColaboradores.qryDadosRHColabAfterOpen(DataSet: TDataSet);
begin
  qryDadosFinanceiros.close;
  qryDadosFinanceiros.ParamByName('rcid').AsInteger:= qryDadosRHColabRC_ID.AsInteger;
  qryDadosFinanceiros.open;
end;

procedure TfrmColaboradores.qryDadosRHColabBAN_CODValidate(Sender: TField);
begin
    DM.qryConsulta.close;
     DM.qryConsulta.sql.Text:=
     ' select ENT.ENT_NOME from BANCOS BANC '
     +' left join entidades ent on ent.ent_cod = banc.ent_cod '
     +' where banc.ban_cod = :banccod ';

     DM.qryConsulta.ParamByName('banccod').AsInteger:= qryDadosRHColabBAN_COD.AsInteger;

     DM.qryConsulta.open;
    qryDadosRHColabENT_NOME.AsString:= DM.qryConsulta.FieldByName('ent_nome').AsString;
end;

procedure TfrmColaboradores.qryDadosRHColabNewRecord(DataSet: TDataSet);
begin
  qryDadosRHColabRC_SITUACAO.AsString:= '1';
  qryDadosRHColabRC_TP_CONTA.AsString:= '1';
  qryDadosRHColabRC_TP_CONTA.AsString:= '2';
end;

procedure TfrmColaboradores.qryDadosRHColabRC_BAN_COD_PValidate(Sender: TField);
begin
  DM.qryConsulta.close;
     DM.qryConsulta.sql.Text:=
     ' select ENT.ENT_NOME from BANCOS BANC '
     +' left join entidades ent on ent.ent_cod = banc.ent_cod '
     +' where banc.ban_cod = :banccod ';

     DM.qryConsulta.ParamByName('banccod').AsInteger:= qryDadosRHColabRC_BAN_COD_P.AsInteger;
     DM.qryConsulta.open;

    qryDadosRHColabRC_NOME_BANCO_P.AsString:= DM.qryConsulta.FieldByName('ent_nome').AsString;
end;

procedure TfrmColaboradores.qryDadosFinanceirosNewRecord(DataSet: TDataSet);
begin
  qryDadosFinanceirosRC_ID.AsInteger := qryDadosRHColabRC_ID.AsInteger;
end;

procedure TfrmColaboradores.qryHistoricoEnderecoNewRecord(DataSet: TDataSet);
begin
  qryHistoricoEnderecoENT_COD.AsInteger:= qryDadosEntidadesENT_COD.AsInteger;
end;

procedure TfrmColaboradores.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmBuscarBancoCorrente,frmBuscarBancoCorrente);
  frmBuscarBancoCorrente.ShowModal;

  if frmBuscarBancoCorrente.ModalResult = mrOK then
    Begin
      qryDadosRHColabRC_BAN_COD_P.AsInteger := frmBuscarBancoCorrente.codigoRetorno;

    end;
  FreeAndNil(frmBuscarBancoCorrente);
end;

procedure TfrmColaboradores.SpeedButton2Click(Sender: TObject);
begin
  //MPlayerControl1.MPlayerPath:= '';
  //MPlayerControl1.Filename := 'tv:// driver=v4l2:device=/dev/video0:gain=1:width=300:height=400:fps=25';

 // MPlayerControl1.Play;
end;

function TfrmColaboradores.ValidaCPF(num: string): boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  if (Length(num)<>11) then
  begin
    Result:=False;
  end
  else
  begin
    n1:= StrToInt(num[1]);
    n2:= StrToInt(num[2]);
    n3:= StrToInt(num[3]);
    n4:= StrToInt(num[4]);
    n5:= StrToInt(num[5]);
    n6:= StrToInt(num[6]);
    n7:= StrToInt(num[7]);
    n8:= StrToInt(num[8]);
    n9:= StrToInt(num[9]);
    d1:= n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
    d1:=11-(d1 mod 11);
    if d1>=10 then d1:=0;
      d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
      d2:=11-(d2 mod 11);
    if d2>=10 then d2:=0;
      calculado:= inttostr(d1)+inttostr(d2);
      digitado:=num[10]+num[11];
    if calculado=digitado then
      Result :=true
    else
    Result :=false;
  end;
end;

function TfrmColaboradores.ApenasNumeros(Const Texto:String):String;
var
 I: integer;
 S: string;
begin
  s :='';
  for I:= 1 To length(texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
  begin
    S := s + copy(texto, I, 1);
  end;
  end;
  result := s;
end;

procedure TfrmColaboradores.ControlarBotoes (EmEdicao: Boolean);
var i :integer;
begin

  tbIncluir.Enabled  := not EmEdicao;
  tbModificar.Enabled:= (not EmEdicao) and (not qryDadosEntidades.IsEmpty);
  tbGravar.Enabled   := EmEdicao;
  tbAnterior.Enabled := (not EmEdicao) and (not qryDadosEntidades.IsEmpty);
  tbFechar.Enabled   := not EmEdicao;
  tbCancelar.Enabled := EmEdicao;
  tbBuscar.Enabled   := not EmEdicao;
  tbProximo.Enabled  := (not EmEdicao) and (not qryDadosEntidades.IsEmpty);
  tbApagar.Enabled   := (not EmEdicao) and (not qryDadosEntidades.IsEmpty);

  dsDadosEntidades.AutoEdit  := EmEdicao;
  dsDadosRHColab.AutoEdit    := EmEdicao;
  tsIdentificacao.Enabled    := EmEdicao;
  tsFinanceiro.Enabled       := EmEdicao;
  tsEndereco.Enabled         := EmEdicao;
  tsdadosbancarios.Enabled   := EmEdicao;
  dsDadosFinanceiros.AutoEdit:= EmEdicao;

  for i:= 0 to ComponentCount -1 do
  begin
    if Components[i] is TDBLookupComboBox then
    begin
      if TDBLookupComboBox(Components[i]).DataSource <> nil then
      begin
        TDBLookupComboBox(Components[i]).Enabled:=TDBLookupComboBox(Components[i]).DataSource.AutoEdit;
      end
      else
      begin
        TDBLookupComboBox(Components[i]).Enabled := false;
      end;
    end;
  end;
end;

function TfrmColaboradores.Mascara(edt: String;str:String):string;
var
  i : integer;
begin
  for i := 1 to Length(edt) do
  begin
    if (str[i] = '9')
      and not (edt[i] in ['0'..'9'])
        and (Length(edt)=Length(str)+1) then
          delete(edt,i,1);
    if (str[i] <> '9')
      and (edt[i] in ['0'..'9']) then
        insert(str[i],edt, i);
  end;
  result := edt;
end;

end.

