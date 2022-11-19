function varargout = SFgenformcalculator(varargin)
% SFGENFORMCALCULATOR MATLAB code for SFgenformcalculator.fig
%      SFGENFORMCALCULATOR, by itself, creates a new SFGENFORMCALCULATOR or raises the existing
%      singleton*.
%
%      H = SFGENFORMCALCULATOR returns the handle to a new SFGENFORMCALCULATOR or the handle to
%      the existing singleton*.
%
%      SFGENFORMCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SFGENFORMCALCULATOR.M with the given input arguments.
%
%      SFGENFORMCALCULATOR('Property','Value',...) creates a new SFGENFORMCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SFgenformcalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SFgenformcalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SFgenformcalculator

% Last Modified by GUIDE v2.5 18-Nov-2022 20:55:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SFgenformcalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @SFgenformcalculator_OutputFcn, ...
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


% --- Executes just before SFgenformcalculator is made visible.
function SFgenformcalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SFgenformcalculator (see VARARGIN)

% Choose default command line output for SFgenformcalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SFgenformcalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SFgenformcalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
img =handles.img;
imshow('genform.png','Parent',img)


function t0_Callback(hObject, eventdata, handles)
% hObject    handle to t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t0 as text
%        str2double(get(hObject,'String')) returns contents of t0 as a double


% --- Executes during object creation, after setting all properties.
function t0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function K_Callback(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of K as text
%        str2double(get(hObject,'String')) returns contents of K as a double


% --- Executes during object creation, after setting all properties.
function K_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
T = str2double(get(handles.T, 'string'));
K = str2double(get(handles.K, 'string'));
t0 = str2double(get(handles.t0, 'string'));

if isnan(T) == 1
    msgbox('T feild is empty , Entre your Period ', 'error','error')
elseif isnan(t0) == 1
    msgbox('t0 feild is empty , Entre t0 value !!!! ', 'error','error')
elseif isnan(K) == 1
    msgbox('K feild is empty , Dont put it so big Or your pc will blow up ', 'error','error')
elseif T<=t0 
    msgbox('Are you sure that T=t0 ', 'error','error')
elseif  K == 0 
    msgbox('Dont make me angry , K must be greater then 0 , :< ', 'error','error')
else
    hax = handles.plot1
    tic
    w= 2*pi/T;
    t = t0:t0+T; 
    syms xt t k
    xt = symfun(str2sym(get(handles.x, 'String')),t);
    X = xt(t);
    s1 = 0 ;
    s2 = 0;
    a0 = (2/T)*int(xt, t, t0, t0+T);

    for k=1:K 

        an(k) = (2/T)*int(xt(t)*cos(k*w*t), t, t0, t0+T);
        bn(k) = (2/T)*int(xt(t)*sin(k*w*t), t, t0, t0+T); 

        s1 = s1 + an(k)*cos(k*w*t);
        s2 = s2 + bn(k)*sin(k*w*t);

    end
    s1;
    s2;
    x_k = a0/2 + s1 +s2;
    cla(hax)
    hold(hax, 'on')
    fplot(hax, x_k, [t0, t0+T])
    fplot(hax, X, [t0, t0+T],'--k')
    legend(hax, 'x(t)', 'X_k(t)' )
    title(hax, 'Serie de Fourier Form general ')
    t = toc;
    set(handles.s1, 'String', char(s1))
    set(handles.s2, 'String', char(s2))
    set(handles.xk, 'String', char(x_k))
    set(handles.t, 'String', [num2str(t), ' s'])
    
end


function t_Callback(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t as text
%        str2double(get(hObject,'String')) returns contents of t as a double


% --- Executes during object creation, after setting all properties.
function t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function s2_Callback(hObject, eventdata, handles)
% hObject    handle to s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of s2 as text
%        str2double(get(hObject,'String')) returns contents of s2 as a double


% --- Executes during object creation, after setting all properties.
function s2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xk_Callback(hObject, eventdata, handles)
% hObject    handle to xk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xk as text
%        str2double(get(hObject,'String')) returns contents of xk as a double


% --- Executes during object creation, after setting all properties.
function xk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function s1_Callback(hObject, eventdata, handles)
% hObject    handle to s1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of s1 as text
%        str2double(get(hObject,'String')) returns contents of s1 as a double


% --- Executes during object creation, after setting all properties.
function s1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to s1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function T_Callback(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of T as text
%        str2double(get(hObject,'String')) returns contents of T as a double


% --- Executes during object creation, after setting all properties.
function T_CreateFcn(hObject, eventdata, handles)
% hObject    handle to T (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
