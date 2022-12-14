//===-- TCPSocket.h ---------------------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef liblldb_TCPSocket_h_
#define liblldb_TCPSocket_h_

#include "lldb/Host/Socket.h"
#include "lldb/Host/SocketAddress.h"
#include <map>

namespace lldb_private {
class TCPSocket : public Socket {
public:
  TCPSocket(bool should_close, bool child_processes_inherit);
  TCPSocket(NativeSocket socket, bool should_close,
            bool child_processes_inherit);
  ~TCPSocket() override;

  // returns port number or 0 if error
  uint16_t GetLocalPortNumber() const;

  // returns ip address string or empty string if error
  std::string GetLocalIPAddress() const;

  // must be connected
  // returns port number or 0 if error
  uint16_t GetRemotePortNumber() const;

  // must be connected
  // returns ip address string or empty string if error
  std::string GetRemoteIPAddress() const;

  int SetOptionNoDelay();
  int SetOptionReuseAddress();

  Status Connect(llvm::StringRef name) override;
  Status Listen(llvm::StringRef name, int backlog) override;
  Status Accept(Socket *&conn_socket) override;

  Status CreateSocket(int domain);

  bool IsValid() const override;

  std::string GetRemoteConnectionURI() const override;

  /// ==== CODASIP ====
  typedef std::vector<int> ListenSocketFds;
  ListenSocketFds GetListenSocketFds() const;
  /// =================

private:
  TCPSocket(NativeSocket socket, const TCPSocket &listen_socket);

  void CloseListenSockets();

  std::map<int, SocketAddress> m_listen_sockets;
};
}

#endif // ifndef liblldb_TCPSocket_h_
