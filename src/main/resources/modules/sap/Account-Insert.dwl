%dw 2.0
import substring from dw::core::Strings
output application/xml
---
{
  (p('client.bapiName.Account-Insert')): {
    "import": {
      "I_CUS": {
        "KTOKD": "5000",
        "STCD1": payload.Rut__c,
        "LZONE": payload.Global_Comuna_Zona_de_transporte__c,
        "KALKS": "1",
        "ANTLF": "9",
        "KZAZU": "X",
        "WAERS": "CLP",
        "VKGRP": null, //payload.Grupo_de_Vendedores__c,
        "NAME": substring(payload.Name,0,40),
        "NAME_2": payload.Nombre_de_Fantasia__c,
        "SORT1": payload.Concepto_de_B_squeda_1__c,
        "SORT2": payload.Concepto_de_B_squeda_2__c,
        "TIME_ZONE": "CHILE",
        "TITLE_P":payload.Tratamiento__c,
        "LANGU_P": "ES",
        "STREET": payload.VLC_Calle_Direccion__c,
        "HOUSE_NO": payload.VLC_Numero_Direccion__c,
        "COUNTRY": payload.Pais__c,
        "ABLAD": "18:00",
        "KNFAK": "CL",
        "WANID": "ZRE",
        "TATYP": "MWST",
        "PARVW": "VE",
        "PERNR": payload.VLC_Codigo_SAP_Usuario__c,
//        "PARVW_Z1": "Z1",
//        "KUNN2_Z1": "0005008250",
        "TAXKD": "1",
        "BRSCH": payload.Ramo_c__c,
        "BRAN1": payload.C_digo_Ramo_global__c,
        "REGION": payload.Global_regi_n__c,
        "CITY": payload.Global_Comuna_Zona_de_transporte__c_original,
        "PARENT_CUSTOMER": null
      }
    },
    "tables": {
      "TI_DVENTAS": {
        "row": {
          "VKORG": payload.Organizaci_n_1__c,
          "VTWEG": payload.Canal_1_1__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_1__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "CV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        },
        "row": {
          "VKORG": payload.Organizaci_n_1__c,
          "VTWEG": payload.Canal_1_2__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_1__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "CV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        },
        "row": {
          "VKORG": payload.Organizaci_n_2__c,
          "VTWEG": payload.Canal_2_1__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_2__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "FV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        },
        "row": {
          "VKORG": payload.Organizaci_n_2__c,
          "VTWEG": payload.Canal_2_2__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_2__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "FV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        },
        "row": {
          "VKORG": payload.Organizaci_n_3__c,
          "VTWEG": payload.Canal_3_1__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_3__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "AV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        },
        "row": {
          "VKORG": payload.Organizaci_n_3__c,
          "VTWEG": payload.Canal_3_2__c,
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c,
          "DZTERM": payload.Cond_Pago__c,
          "VKBUR": payload.Oficina_de_Venta_3__c,
          "VERSG": payload.Grupo_Estad_stico_Clientes__c,
          "BZIRK": payload.Zona_de_Venta__c,
          "INCO1": payload.Incoterms__c,
          "INCO2": payload.Incoterms_parte_2__c,
          "KTGRD": payload.Grupo_Imputaci_n__c,
          "VSBED": payload.Condici_n_Expedici_n__c,
          "LPRIO": payload.Prioridad_Entrega__c,
          "VWERK": "AV03",
          "KLABC": payload.Clasificaci_n_ABC__c
        }
      },
      "TI_SOCIEDAD": {
        "row": {
          "BUKRS": "VOLC",
          "AKONT": payload.Cuenta_contable_asociada__c,
          "ZTERM": payload.Cond_Pago__c,
          "FDGRV": payload.Grupo_de_tesorer_a__c
        },
        "row": {
          "BUKRS": "FIBR",
          "AKONT": payload.Cuenta_contable_asociada__c,
          "ZTERM": payload.Cond_Pago__c,
          "FDGRV": payload.Grupo_de_tesorer_a__c
        },
        "row": {
          "BUKRS": "AVSA",
          "AKONT": payload.Cuenta_contable_asociada__c,
          "ZTERM": payload.Cond_Pago__c,
          "FDGRV": payload.Grupo_de_tesorer_a__c
        }
      }
    }
  }
}