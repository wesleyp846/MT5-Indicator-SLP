void OnStart()
{
    // Coordenadas para a etiqueta (X, Y)
    int x = 1200;
    int y = 50;

    // Texto da etiqueta
    string labelText1 = "";
    string labelText2 = "";
    string labelText3 = "";
    string labelText4 = "";
    string labelText5 = "";
    string labelText6 = "";
    string labelText7 = "";
    string labelText8 = "";

    // Cor da etiqueta (Cinza)
    color labelColor = clrGray;

    // Tamanho da fonte da etiqueta
    int fontSize = 12;

    // Símbolos a serem exibidos
    string symbolToDisplay1 = "BOVAJ112";
    string symbolToDisplay2 = "BOVAV112";
    string symbolToDisplay3 = "BOVAP25";
    string symbolToDisplay5 = "BOVAK115";
    string symbolToDisplay6 = "BOVAW115";
    string symbolToDisplay7 = "BOVAT114";

    // Obter os preços "last" dos ativos BOVA11 e BOVAP25
    double currentPrice1 = SymbolInfoDouble(symbolToDisplay1, SYMBOL_ASK);
    double currentPrice2 = SymbolInfoDouble(symbolToDisplay2, SYMBOL_ASK);
    double currentPrice3 = SymbolInfoDouble(symbolToDisplay3, SYMBOL_BID);
    double currentPrice4 = (currentPrice3 - (currentPrice1 + currentPrice2));
    double currentPrice5 = SymbolInfoDouble(symbolToDisplay5, SYMBOL_ASK);
    double currentPrice6 = SymbolInfoDouble(symbolToDisplay6, SYMBOL_ASK);
    double currentPrice7 = SymbolInfoDouble(symbolToDisplay7, SYMBOL_BID);
    double currentPrice8 = (currentPrice7 - (currentPrice5 + currentPrice6));

    // Adicionar os preços atuais dos símbolos à etiqueta
    labelText1 = symbolToDisplay1 + " D20/10 S114 Atual: " + DoubleToString(currentPrice1, 2);
    labelText2 = symbolToDisplay2 + " D20/10 S114 Atual: " + DoubleToString(currentPrice2, 2);
    labelText3 = symbolToDisplay3 + " D2025 S125 Atual: " + DoubleToString(currentPrice3, 2);
    labelText4 = DoubleToString(currentPrice4, 2);
    labelText5 = symbolToDisplay5 + " D17/11 S115 Atual: " + DoubleToString(currentPrice5, 2);
    labelText6 = symbolToDisplay6 + " D17/11 S115 Atual: " + DoubleToString(currentPrice6, 2);
    labelText7 = symbolToDisplay7 + " D2025 S115 Atual: " + DoubleToString(currentPrice7, 2);
    labelText8 = DoubleToString(currentPrice8, 2);
    
    // Exibir a etiqueta na tela
    ObjectCreate(0, "Label1", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label1", OBJPROP_XDISTANCE, x - 350);
    ObjectSetInteger(0, "Label1", OBJPROP_YDISTANCE, y);
    ObjectSetString(0, "Label1", OBJPROP_TEXT, labelText1);
    ObjectSetInteger(0, "Label1", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label1", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label1", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label1", OBJPROP_ANCHOR, ANCHOR_CENTER);

    // Exibir a segunda linha de texto
    ObjectCreate(0, "Label2", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label2", OBJPROP_XDISTANCE, x - 350);
    ObjectSetInteger(0, "Label2", OBJPROP_YDISTANCE, y + 30); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label2", OBJPROP_TEXT, labelText2);
    ObjectSetInteger(0, "Label2", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label2", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label2", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label2", OBJPROP_ANCHOR, ANCHOR_CENTER);
    
    // Exibir a terceira linha de texto
    ObjectCreate(0, "Label3", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label3", OBJPROP_XDISTANCE, x - 350);
    ObjectSetInteger(0, "Label3", OBJPROP_YDISTANCE, y + 60); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label3", OBJPROP_TEXT, labelText3);
    ObjectSetInteger(0, "Label3", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label3", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label3", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label3", OBJPROP_ANCHOR, ANCHOR_CENTER);
    
    // Exibir a quarta linha de texto
    ObjectCreate(0, "Label4", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label4", OBJPROP_XDISTANCE, x - 350);
    ObjectSetInteger(0, "Label4", OBJPROP_YDISTANCE, y + 90); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label4", OBJPROP_TEXT, labelText4);
    ObjectSetInteger(0, "Label4", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label4", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label4", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label4", OBJPROP_ANCHOR, ANCHOR_CENTER);
    
    // Exibir a etiqueta na tela
    ObjectCreate(0, "Label5", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label5", OBJPROP_XDISTANCE, x);
    ObjectSetInteger(0, "Label5", OBJPROP_YDISTANCE, y);
    ObjectSetString(0, "Label5", OBJPROP_TEXT, labelText5);
    ObjectSetInteger(0, "Label5", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label5", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label5", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label5", OBJPROP_ANCHOR, ANCHOR_CENTER);

    // Exibir a segunda linha de texto
    ObjectCreate(0, "Label6", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label6", OBJPROP_XDISTANCE, x);
    ObjectSetInteger(0, "Label6", OBJPROP_YDISTANCE, y + 30); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label6", OBJPROP_TEXT, labelText6);
    ObjectSetInteger(0, "Label6", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label6", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label6", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label6", OBJPROP_ANCHOR, ANCHOR_CENTER);
    
    // Exibir a terceira linha de texto
    ObjectCreate(0, "Label7", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label7", OBJPROP_XDISTANCE, x);
    ObjectSetInteger(0, "Label7", OBJPROP_YDISTANCE, y + 60); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label7", OBJPROP_TEXT, labelText7);
    ObjectSetInteger(0, "Label7", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label7", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label7", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label7", OBJPROP_ANCHOR, ANCHOR_CENTER);
    
    // Exibir a quarta linha de texto
    ObjectCreate(0, "Label8", OBJ_LABEL, 0, 0, 0);
    ObjectSetInteger(0, "Label8", OBJPROP_XDISTANCE, x);
    ObjectSetInteger(0, "Label8", OBJPROP_YDISTANCE, y + 90); // Ajuste a posição vertical conforme necessário
    ObjectSetString(0, "Label8", OBJPROP_TEXT, labelText8);
    ObjectSetInteger(0, "Label8", OBJPROP_COLOR, labelColor);
    ObjectSetInteger(0, "Label8", OBJPROP_FONTSIZE, fontSize);
    ObjectSetInteger(0, "Label8", OBJPROP_CORNER, CORNER_LEFT_UPPER);
    ObjectSetInteger(0, "Label8", OBJPROP_ANCHOR, ANCHOR_CENTER);
}
