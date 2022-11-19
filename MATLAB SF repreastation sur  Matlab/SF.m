function varargout = SF(varargin)
% SF MATLAB code for SF.fig
%      SF, by itself, creates a new SF or raises the existing
%      singleton*.
%
%      H = SF returns the handle to a new SF or the handle to
%      the existing singleton*.
%
%      SF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SF.M with the given input arguments.
%
%      SF('Property','Value',...) creates a new SF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SF_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SF_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SF

% Last Modified by GUIDE v2.5 17-Nov-2022 08:09:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SF_OpeningFcn, ...
                   'gui_OutputFcn',  @SF_OutputFcn, ...
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


% --- Executes just before SF is made visible.
function SF_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SF (see VARARGIN)

% Choose default command line output for SF
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SF wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SF_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function a0_Callback(hObject, eventdata, handles)
% hObject    handle to a0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a0 as text
%        str2double(get(hObject,'String')) returns contents of a0 as a double


% --- Executes during object creation, after setting all properties.
function a0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function an_Callback(hObject, eventdata, handles)
% hObject    handle to an (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of an as text
%        str2double(get(hObject,'String')) returns contents of an as a double


% --- Executes during object creation, after setting all properties.
function an_CreateFcn(hObject, eventdata, handles)
% hObject    handle to an (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bn_Callback(hObject, eventdata, handles)
% hObject    handle to bn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bn as text
%        str2double(get(hObject,'String')) returns contents of bn as a double


% --- Executes during object creation, after setting all properties.
function bn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XK_Callback(hObject, eventdata, handles)
% hObject    handle to XK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XK as text
%        str2double(get(hObject,'String')) returns contents of XK as a double


% --- Executes during object creation, after setting all properties.
function XK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calbtnA.
function calbtnA_Callback(hObject, eventdata, handles)
% hObject    handle to calbtnA (see GCBO)
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
    hax2 = handles.plot2; 
    

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

    xk_k2 = sum(cn.*xe)
    b = char(xk_k2);
    
    
    cla(hax2)
    
    hold(hax2, 'on')
    
    fplot(hax2, xk_k2, [t0, t0+T], 'r')
    
    fplot(hax2, X, [t0, t0+T],'--k')
    
    legend(hax2, 'x(t)', 'X_k(t)' )
    
    title(hax2, 'Serie de Fourier Form Expolentiel ')
    t2 = toc;
    set(handles.time2, 'String', [num2str(b), ' s'])
    tic
    a0 = (2/T)*int(xt, t, t0, t0+T)

    for k=1:K 

        an(k) = (2/T)*int(xt(t)*cos(k*w*t), t, t0, t0+T);
        bn(k) = (2/T)*int(xt(t)*sin(k*w*t), t, t0, t0+T); 

        s1 = s1 + an(k)*cos(k*w*t);
        s2 = s2 + bn(k)*sin(k*w*t);

    end
    s1
    s2
    x_k = a0/2 + s1 +s2
    cla(hax)
    hold(hax, 'on')
    fplot(hax, x_k, [t0, t0+T])
    fplot(hax, X, [t0, t0+T],'--k')
    legend(hax, 'x(t)', 'X_k(t)' )
    title(hax, 'Serie de Fourier Form general ')
    t = toc;
    
    set(handles.time, 'String', [num2str(t), ' s'])
    
    clear x t 
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time2_Callback(hObject, eventdata, handles)
% hObject    handle to time2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time2 as text
%        str2double(get(hObject,'String')) returns contents of time2 as a double


% --- Executes during object creation, after setting all properties.
function time2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
