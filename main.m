function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 28-Feb-2017 13:23:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global colunas;
global parametro;
global metade;
global cont1;
global cont2;
global cont3;
global vetor;
global col1;
global col2;
global col3;
global met1;
global met2;
global r1;
global r2;
global r3;
global r4;
global r5;
global r6;
global r7;
global r8;
global r9;
global r10;
global r11;
global r12;
global rua;
global lista_cores;
global lista_pares;
global lista_metade;
global tam_lista;
global cont_list;
global cont_par;

cont1 = 0;
cont2 = 0;
cont3 = 0;
met1 = 0;
met2 = 0;
col1 = 0;
col2 = 0;
col3 = 0;
r1 = 0;
r2 = 0;
r3 = 0;
r4 = 0;
r5 = 0;
r6 = 0;
r7 = 0;
r8 = 0;
r9 = 0;
r10 = 0;
r11 = 0;
r12 = 0;
vetor = zeros(1,3);
colunas = zeros(1,3);
metade = zeros(1,2);
rua = zeros(1,12);
tam_lista = 5;
lista_cores = zeros(1,tam_lista);
lista_pares = zeros(1,tam_lista);
lista_metade = zeros(1,tam_lista);
cont_list = 0;
cont_par = 0;
parametro = 4; % Valor default estatistico

% Get default command line output from handles structure
varargout{1} = handles.output;



function EditEntrada_Callback(hObject, eventdata, handles)
% hObject    handle to EditEntrada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditEntrada as text
%        str2double(get(hObject,'String')) returns contents of EditEntrada as a double


% --- Executes during object creation, after setting all properties.
function EditEntrada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditEntrada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global colunas;
global parametro;
global cont1;
global cont2;
global cont3;
global vetor;
global col1;
global col2;
global col3;
global met1;
global met2;
global metade;
global rua;
global r1;
global r2;
global r3;
global r4;
global r5;
global r6;
global r7;
global r8;
global r9;
global r10;
global r11;
global r12;
global lista_cores;
global tam_lista;
global cont_list;
global lista_pares;
global lista_metade;

n = str2double(get(handles.EditEntrada,'String'));
parametro = floor(get(handles.slider1,'Value'));

if (n <= 0) || (n > 37) || isnan(n)
    msgbox('Valor inválido - (correto entre 1 e 36)', 'Error','error');
    return;
end

% Aqui eu vejo se é as duzias
[cont1,cont2,cont3,vetor] = get_duzias(n,cont1,cont2,cont3,vetor);

% Aqui vou verificar as colunas
[col1,col2,col3,colunas] = get_colunas(n,col1,col2,col3,colunas);

% verifica se está no intervalo entre (1 á 18) (19 á 36)
[met1,met2,metade] = get_metade(n,met1,met2,metade);


% Aqui vou verificar todas as ruas
[r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,rua] = get_ruas(n,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,rua);

% Aqui vou fazer a lista de (vermelhos e pretos) e (par e impar)
cont_list = cont_list + 1; % contador da lista

if cont_list == tam_lista %  Para garantir que o tamanho da lista é fixa
    cont_list = 1;
end

lista_cores(1,cont_list) = get_cor(n); % Coloca a cor na lista
lista_metade(1,cont_list) = n;

if mod(n,2)% Se é impar é 1
    lista_pares(1,cont_list)= 10; % se é impar atribui 10
else
    lista_pares(1,cont_list)= -10;% se nao atribui -10
end

% Verifica as lista de cores
if lista_cores(1,1:parametro) == 112     % Cor preto
    set(handles.Result,'string','Aposte no Vermelho');
elseif lista_cores(1,1:parametro) == 118 % Cor vemelhor
    set(handles.Result,'string','Aposte no Preto');
else
    set(handles.Result,'string','Resultado');
end

% Verifica as listas de pares
if lista_pares(1,1:parametro) == -10
    set(handles.ResultPar,'string','Aposte no Impar');
elseif lista_pares(1,1:parametro) == 10
    set(handles.ResultPar,'string','Aposte no Par');
else
    set(handles.ResultPar,'string','Resultado');
end

% Verifico a lista de metade
 if (lista_metade(1,1:parametro) >= 1) & (lista_metade(1,1:parametro) <= 18)
    set(handles.text14,'string','Aposte na segunda coluna');
 elseif (lista_metade(1,1:parametro) >= 19) & (lista_metade(1,1:parametro) <= 36)
     set(handles.text14,'string','Aposte na primeira coluna');
 else
     set(handles.text14,'string','Resultado');
 end


% Plota os gráficos
bar(vetor,'Parent', handles.axes1);
bar(colunas,'Parent', handles.axes5);
bar(metade,'Parent', handles.axes6);
bar(rua,'Parent', handles.axes7);
drawnow;

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function ResultPar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ResultPar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on key press with focus on EditEntrada and none of its controls.
function EditEntrada_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to EditEntrada (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
%key = get(gcf,'CurrentKey');
%if(strcmp (key , 'return'))
%    pushbutton1_Callback(hObject, eventdata, handles);
%end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global colunas;
global metade;
global cont1;
global cont2;
global cont3;
global vetor;
global col1;
global col2;
global col3;
global met1;
global met2;
global r1;
global r2;
global r3;
global r4;
global r5;
global r6;
global r7;
global r8;
global r9;
global r10;
global r11;
global r12;
global rua;
global lista_cores;
global lista_pares;
global tam_lista;
global cont_list;
global cont_par;

cont1 = 0;
cont2 = 0;
cont3 = 0;
met1 = 0;
met2 = 0;
col1 = 0;
col2 = 0;
col3 = 0;
r1 = 0;
r2 = 0;
r3 = 0;
r4 = 0;
r5 = 0;
r6 = 0;
r7 = 0;
r8 = 0;
r9 = 0;
r10 = 0;
r11 = 0;
r12 = 0;
vetor = zeros(1,3);
colunas = zeros(1,3);
metade = zeros(1,2);
rua = zeros(1,12);
tam_lista = 5;
lista_cores = zeros(1,tam_lista);
lista_pares = zeros(1,tam_lista);
cont_list = 0;
cont_par = 0;
cla(handles.axes1,'reset');
cla(handles.axes5,'reset');
cla(handles.axes7,'reset');
cla(handles.axes6,'reset');




% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
parametro = floor(get(handles.slider1,'Value'));
set(handles.text13,'string',num2str(parametro));
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
