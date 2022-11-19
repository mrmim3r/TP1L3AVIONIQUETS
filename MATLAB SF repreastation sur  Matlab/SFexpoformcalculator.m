function varargout = SFexpoformcalculator(varargin)
% SFEXPOFORMCALCULATOR MATLAB code for SFexpoformcalculator.fig
%      SFEXPOFORMCALCULATOR, by itself, creates a new SFEXPOFORMCALCULATOR or raises the existing
%      singleton*.
%
%      H = SFEXPOFORMCALCULATOR returns the handle to a new SFEXPOFORMCALCULATOR or the handle to
%      the existing singleton*.
%
%      SFEXPOFORMCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SFEXPOFORMCALCULATOR.M with the given input arguments.
%
%      SFEXPOFORMCALCULATOR('Property','Value',...) creates a new SFEXPOFORMCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SFexpoformcalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SFexpoformcalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SFexpoformcalculator

% Last Modified by GUIDE v2.5 17-Nov-2022 12:32:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SFexpoformcalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @SFexpoformcalculator_OutputFcn, ...
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


% --- Executes just before SFexpoformcalculator is made visible.
function SFexpoformcalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SFexpoformcalculator (see VARARGIN)

% Choose default command line output for SFexpoformcalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SFexpoformcalculator wait for user response (see UIRESUME)
% uiwait(handles.figure1



% --- Outputs from this function are returned to the command line.
function varargout = SFexpoformcalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
img =handles.formuleimg;
imshow('expoimgfor.png','Parent',img)


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


% --- Executes on button press in calbtn.
function calbtn_Callback(hObject, eventdata, handles)
% hObject    handle to calbtn (see GCBO)
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
    hax = handles.plot1;
    w= 2*pi/T;
    t = t0:t0+T; 
    syms xt t k
    xt = symfun(str2sym(get(handles.x, 'String')),t);
    X = xt(t);
    s1 = 0 ;
    s2 = 0;
      tic 
    for k = -K:K 
        cn(k+K+1) = (1/T)*int(xt(t).*exp(-1j*k*w*t), t,t0, t0+T);
        xe(k+K+1) = exp(1j*k*w*t);
    end

    xk_k2 = sum(cn.*xe);
    set(handles.cn, 'String', char(cn));
    set(handles.xe, 'String', char(xe));
    set(handles.xk, 'String', char(xk_k2));
    cla(hax)

    hold(hax, 'on')
    
    fplot(hax, xk_k2, [t0, t0+T], 'r')
    
    fplot(hax, X, [t0, t0+T],'--k')
    
    legend(hax, 'x(t)', 'X_k(t)' )
    
    title(hax, 'Serie de Fourier Form Expolentiel ')
    t2 = toc;
    set(handles.t2, 'String', [num2str(t2), ' s'])
end


function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xe_Callback(hObject, eventdata, handles)
% hObject    handle to xe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xe as text
%        str2double(get(hObject,'String')) returns contents of xe as a double


% --- Executes during object creation, after setting all properties.
function xe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xe (see GCBO)
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



function cn_Callback(hObject, eventdata, handles)
% hObject    handle to cn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cn as text
%        str2double(get(hObject,'String')) returns contents of cn as a double


% --- Executes during object creation, after setting all properties.
function cn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
