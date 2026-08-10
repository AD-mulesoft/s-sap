%dw 2.0
import substring from dw::core::Strings
output application/xml
---
{
  (p('client.bapiName.Tiernda_Obra__c-Update')): {
    "import": {
	  "I_KUNNR": payload.Cod_Cliente__c,
      "I_CUS": {
        "LZONE": payload.Global_Comuna_Zona_de_transporte__c replace "ELIMINAR" with "",
        "NAME": substring(payload.Name,0,40) replace "ELIMINAR" with "",
        "NAME_2": payload.Nombre_de_Fantasia__c replace "ELIMINAR" with "",
        "SORT1": payload.Concepto_de_B_squeda_1__c replace "ELIMINAR" with "",
        "SORT2": payload.Concepto_de_B_squeda_2__c replace "ELIMINAR" with "",
        "STREET": payload.VLC_Calle_Direccion__c replace "ELIMINAR" with "",
        "HOUSE_NO": payload.VLC_Numero_Direccion__c replace "ELIMINAR" with "",
        "BRSCH": payload.Ramo__c replace "ELIMINAR" with "",
        "BRAN1": payload.C_digo_Ramo_global__c replace "ELIMINAR" with "",
        "REGION": payload.Global_regi_n__c replace "ELIMINAR" with "",
        "CITY": payload.Global_Comuna_Zona_de_transporte__c_original replace "ELIMINAR" with ""
      },
      "I_CUSX": {
        "LZONE": if(!isEmpty(payload.Global_Comuna_Zona_de_transporte__c)) "X" else "",
        "NAME": if(!isEmpty(payload.Name)) "X" else "",
        "NAME_2": if(!isEmpty(payload.Nombre_de_Fantasia__c)) "X" else "",
        "SORT1": if(!isEmpty(payload.Concepto_de_B_squeda_1__c)) "X" else "",
        "SORT2": if(!isEmpty(payload.Concepto_de_B_squeda_2__c)) "X" else "",
        "STREET": if(!isEmpty(payload.VLC_Calle_Direccion__c)) "X" else "",
        "HOUSE_NO": if(!isEmpty(payload.VLC_Numero_Direccion__c)) "X" else "",
        "BRSCH": if(!isEmpty(payload.Ramo__c)) "X" else "",
        "BRAN1": if(!isEmpty(payload.C_digo_Ramo_global__c)) "X" else "",
        "REGION": if(!isEmpty(payload.Global_regi_n__c)) "X" else "",
        "CITY": if(!isEmpty(payload.Global_Comuna_Zona_de_transporte__c_original)) "X" else ""
      }
    },
    "tables": {
      "TI_DVENTAS": {
        "row": {
          "VKORG": payload.Organizaci_n_1__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_1_1__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_Clientes__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_1__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        },
        "row": {
          "VKORG": payload.Organizaci_n_1__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_1_2__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_1__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        },
        "row": {
          "VKORG": payload.Organizaci_n_2__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_2_1__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_Clientes__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_2__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        },
        "row": {
          "VKORG": payload.Organizaci_n_2__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_2_2__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_2__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        },
        "row": {
          "VKORG": payload.Organizaci_n_3__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_3_1__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_Clientes__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_3__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        },
        "row": {
          "VKORG": payload.Organizaci_n_3__c replace "ELIMINAR" with "",
          "VTWEG": payload.Canal_3_2__c replace "ELIMINAR" with "",
          "SPART": "00",
          "KDGRP": payload.Grupo_de_cliente_Distribuidor__c replace "ELIMINAR" with "",
          "DZTERM": payload.Cond_Pago__c replace "ELIMINAR" with "",
          "VKBUR": payload.Oficina_de_Venta_3__c replace "ELIMINAR" with "",
          "INCO2": payload.Incoterms_parte_2__c replace "ELIMINAR" with "",
          "LPRIO": payload.Prioridad_Entrega__c replace "ELIMINAR" with "",
          "KLABC": "",
          "PERNR": payload.VLC_Codigo_SAP_Usuario__c replace "ELIMINAR" with ""
        }
      },
      "TI_DVENTASX": {
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_1__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_1_1__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_Clientes__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_1__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        },
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_1__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_1_2__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_cliente_Distribuidor__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_1__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        },
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_2__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_2_1__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_Clientes__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_2__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        },
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_2__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_2_2__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_cliente_Distribuidor__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_2__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        },
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_3__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_3_1__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_Clientes__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_3__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        },
        "row": {
          "VKORG": if(!isEmpty(payload.Organizaci_n_3__c)) "X" else "",
          "VTWEG": if(!isEmpty(payload.Canal_3_2__c)) "X" else "",
          "SPART": "X",
          "KDGRP": if(!isEmpty(payload.Grupo_de_cliente_Distribuidor__c)) "X" else "",
          "DZTERM": if(!isEmpty(payload.Cond_Pago__c)) "X" else "",
          "VKBUR": if(!isEmpty(payload.Oficina_de_Venta_3__c)) "X" else "",
          "INCO2": if(!isEmpty(payload.Incoterms_parte_2__c)) "X" else "",
          "LPRIO": if(!isEmpty(payload.Prioridad_Entrega__c)) "X" else "",
          "KLABC": "",
          "PERNR": if(!isEmpty(payload.VLC_Codigo_SAP_Usuario__c)) "X" else ""
        }
      }
    }
  }
}