function varargout = gui(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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
global SNR;

function gui_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function vartureargout = gui_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
global SNR;
fl=697;fh=1209;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','1');
guidata(hObject,handles);

function pushbutton2_Callback(hObject, eventdata, handles)
global SNR;
fl=697;fh=1336;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','2');
guidata(hObject,handles);

function pushbutton3_Callback(hObject, eventdata, handles)
global SNR;
fl=697;fh=1477;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','3');
guidata(hObject,handles);

function pushbutton4_Callback(hObject, eventdata, handles)
global SNR;
fl=770;fh=1209;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','4');
guidata(hObject,handles);

function pushbutton5_Callback(hObject, eventdata, handles)
global SNR;
fl=770;fh=1336;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','5');
guidata(hObject,handles);

function pushbutton6_Callback(hObject, eventdata, handles)
global SNR;
fl=770;fh=1477;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','6');
guidata(hObject,handles);

function pushbutton7_Callback(hObject, eventdata, handles)
global SNR;
fl=852;fh=1209;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','7');
guidata(hObject,handles);

function pushbutton8_Callback(hObject, eventdata, handles)
global SNR;
fl=852;fh=1336;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','8');
guidata(hObject,handles);

function pushbutton9_Callback(hObject, eventdata, handles)
global SNR;
fl=852;fh=1477;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','9');
guidata(hObject,handles);

function pushbutton10_Callback(hObject, eventdata, handles)
global SNR;
fl=941;fh=1336;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','0');
guidata(hObject,handles);

function pushbutton11_Callback(hObject, eventdata, handles)
global SNR;
fl=697;fh=1633;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','A');
guidata(hObject,handles);

function pushbutton12_Callback(hObject, eventdata, handles)
global SNR;
fl=770;fh=1633;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','B');
guidata(hObject,handles);

function pushbutton13_Callback(hObject, eventdata, handles)
global SNR;
fl=852;fh=1633;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','C');
guidata(hObject,handles);

function pushbutton14_Callback(hObject, eventdata, handles)
global SNR;
fl=941;fh=1633;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','D');
guidata(hObject,handles);

function pushbutton15_Callback(hObject, eventdata, handles)
global SNR;
fl=852;fh=1477;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','#');
guidata(hObject,handles);

function pushbutton16_Callback(hObject, eventdata, handles)
global SNR;
fl=941;fh=1209;
FFT;
Goertzel;
sound(d1,35000);
set(handles.edit1,'string','*');
guidata(hObject,handles);

function text2_ButtonDownFcn(hObject, eventdata, handles)

function text1_ButtonDownFcn(hObject, eventdata, handles)

function text5_ButtonDownFcn(hObject, eventdata, handles)

